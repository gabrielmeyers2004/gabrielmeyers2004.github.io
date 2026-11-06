ggplot(fd, aes(x = prior_default, fill = risk_flag)) +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent_format()) +
  labs(
    title = "Default Risk by Prior Default History",
    x = "Prior default",
    y = "Proportion of applicants",
    fill = "Default risk"
  ) +
  theme_bw()
