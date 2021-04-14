package gena

import (
	"io/ioutil"

	"gopkg.in/yaml.v2"
)

// Config is struct of gena's config
type Config struct {
	Title       string
	Description string
	URL         string
	Logo        string
	Github      string
	Footer      string
	Content     *Content
}

// Content is struct of categories
type Content struct {
	Categories []*Category
}

// Category struct
type Category struct {
	Name  string
	Sites []*Site
}

// Site struct
type Site struct {
	Name        string
	Description string
	URL         string
	Logo        string
}

// ParseConfig parse config from file
func ParseConfig(file string) (*Config, error) {
	buf, err := ioutil.ReadFile(file)
	if err != nil {
		return nil, err
	}

	cfg := &Config{}
	if err := yaml.Unmarshal(buf, cfg); err != nil {
		return nil, err
	}

	return cfg, nil
}