rule {
  # Disallow spaces in label/annotation keys, they're only allowed in values.
  reject ".* +.*" {
    label_keys      = true
    annotation_keys = true
  }

  # Disallow URLs in labels, they should go to annotations (cardinality!)
  reject "https?://.+" {
    label_keys   = true
    label_values = true
  }
}
