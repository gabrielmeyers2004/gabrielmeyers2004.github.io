fd_device_profit <- fd |>
  group_by(device_type) |>
  summarize(total_profit = sum(profit, na.rm = TRUE)) |>
  arrange(desc(total_profit))

ggplot(fd_device_profit,
       aes(x = reorder(device_type, -total_profit),
           y = total_profit)) +
  geom_col() +
  labs(
    x = "Device Type",
    y = "Total Profit",
    title = "Total Profit by Device Type"
  ) +
  theme_bw()
