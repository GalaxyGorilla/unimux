# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :logger,
  backends: [],
  handle_otp_reports: false

config :unimux,
  routes: [{"APIPrefix", 'http://127.0.0.1:8080', 10000}],
  listen: 'zmq-tcp://127.0.0.1:20000',
  default_timeout: 10000

config :kernel,
  inet_dist_use_interface: {127,0,0,1} # IP for distributed erlang

metricman_config = "deps/metricman/config/config.exs"
if File.exists? metricman_config do
  import_config "../" <> metricman_config
end

config :setup, :home, '/tmp'
