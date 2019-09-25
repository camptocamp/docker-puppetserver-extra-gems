FROM puppet/puppetserver as installer
RUN puppetserver gem install ruby_gpg

FROM scratch
COPY --from=installer /opt/puppetlabs/server/data/puppetserver/jruby-gems/gems/ /opt/puppetlabs/server/data/puppetserver/jruby-gems/gems/
