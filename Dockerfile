#
# LIMS2 on Xenial
#

#
# Base image (can also specify 16.04 instead)
FROM ubuntu:xenial

#
# Update to the latest packages
RUN apt-get update && apt-get upgrade -y

#
# Install LIMS2 system dependencies
RUN apt-get install -y \
git \
wget \
make \
gcc \
libpng-dev \
build-essential \
libreadline-dev \
zlib1g-dev \
flex \
bison \
libxml2-dev \
libxslt-dev \
libssl-dev \
libapparmor-perl \
libapt-pkg-perl \
libclass-accessor-perl \
libdate-manip-perl \
libdbd-mysql-perl \
libdbi-perl \
liberror-perl \
libfile-copy-recursive-perl \
libfont-afm-perl \
libhtml-format-perl \
libhtml-parser-perl \
libhtml-tagset-perl \
libhtml-tree-perl \
libio-pty-perl \
libio-string-perl \
libio-stringy-perl \
libipc-run-perl \
liblocale-gettext-perl \
liblog-log4perl-perl \
libmailtools-perl \
libnet-daemon-perl \
libparse-debianchangelog-perl \
librpc-xml-perl \
libsub-name-perl \
libterm-readkey-perl \
libtext-charwidth-perl \
libtext-iconv-perl \
libtext-wrapi18n-perl \
libtimedate-perl \
liburi-perl \
libwww-perl \
libxml-libxml-perl \
libxml-namespacesupport-perl \
libxml-parser-perl \
libxml-sax-expat-perl \
libxml-sax-perl \
libyaml-syck-perl \
perl-base \
perl-modules \
libbio-scf-perl \
graphviz \
bioperl-run \
bioperl \
postgresql \
postgresql-contrib \
apache2 \
libapache2-mod-fastcgi \
libjson-perl \
sudo


#
# Install LIMS2 Perl modules
RUN perl -MCPAN -e 'install Moose'
RUN perl -MCPAN -e 'install Class::Load'
RUN perl -MCPAN -e 'install YAML::XS'
RUN perl -MCPAN -e 'install Test::Most'
RUN perl -MCPAN -e 'install Hash::MoreUtils'
RUN perl -MCPAN -e 'install TryCatch'
RUN perl -MCPAN -e 'install Const::Fast'
RUN perl -MCPAN -e 'install MooseX::ClassAttribute'
RUN perl -MCPAN -e 'install Throwable::Error'
RUN perl -MCPAN -e 'install Config::Tiny'
RUN perl -MCPAN -e 'install MooseX::Log::Log4perl'
RUN perl -MCPAN -e 'install DBIx::RunSQL'
RUN perl -MCPAN -e 'install CHI'
RUN perl -MCPAN -e 'install Text::CSV'
RUN perl -MCPAN -e 'install Data::FormValidator'
RUN perl -MCPAN -e 'install MooseX::Types::URI'
RUN perl -MCPAN -e 'install YAML::Tiny'
RUN perl -MCPAN -e 'install Data::Serializer'
RUN perl -MCPAN -e 'install Data::Printer'
RUN perl -MCPAN -e 'install Perl6::Slurp'
RUN perl -MCPAN -e 'install Spreadsheet::XLSX'
RUN perl -MCPAN -e 'install Excel::Writer::XLSX'
RUN perl -MCPAN -e 'install File::Slurp'
RUN perl -MCPAN -e 'install Log::Log4perl'
RUN perl -MCPAN -e 'install Algorithm::Diff'
RUN perl -MCPAN -e 'install Class::Load::XS'
RUN perl -MCPAN -e 'install Clone'
RUN perl -MCPAN -e 'install List::MoreUtils'
RUN perl -MCPAN -e 'install IO::String'
RUN perl -MCPAN -e 'install MooseX::Meta::TypeConstraint::Structured'
RUN perl -MCPAN -e 'install DBIx::Class::Schema::Loader'
RUN perl -MCPAN -e 'install DBIx::Connector'
RUN perl -MCPAN -e 'install Image::PNG'
RUN perl -MCPAN -e 'install Iterator::Simple'
RUN perl -MCPAN -e 'install Moose::Role'
RUN perl -MCPAN -e 'install MooseX::Types::Path::Class'
RUN perl -MCPAN -e 'install MooseX::Types::Path::Class::MoreCoercions'
RUN perl -MCPAN -e 'install namespace::autoclean'
RUN perl -MCPAN -e 'install Number::Range'
RUN perl -MCPAN -e 'install Parse::BooleanLogic'
RUN perl -MCPAN -e 'install Selenium::Firefox'
RUN perl -MCPAN -e 'install Term::ReadPassword'
RUN perl -MCPAN -e 'install Try::Tiny'
RUN perl -MCPAN -e 'install Test::Class'
RUN perl -MCPAN -e 'install Test::WWW::Mechanize::Catalyst'
RUN perl -MCPAN -e 'install WWW::JSON'
RUN perl -MCPAN -e 'install Catalyst::Plugin::RequireSSL'
RUN perl -MCPAN -e 'install Catalyst::Plugin::Authorization::Roles'
RUN perl -MCPAN -e 'install Catalyst::Plugin::Session::Store::FastMmap'
RUN perl -MCPAN -e 'install Catalyst::Plugin::Static::Simple'
RUN perl -MCPAN -e 'install Catalyst::Plugin::ConfigLoader'
RUN perl -MCPAN -e 'install Catalyst::Model::Factory::PerRequest'
RUN perl -MCPAN -e 'install Catalyst::Model::DBIC::Schema'
RUN perl -MCPAN -e 'install Catalyst::View::TT'
RUN perl -MCPAN -e 'install Catalyst::View::JSON'
RUN perl -MCPAN -e 'install Catalyst::Controller::REST'
RUN perl -MCPAN -e 'install DBIx::Connector'
RUN perl -MCPAN -e 'install MooseX::Params::Validate'
RUN perl -MCPAN -e 'install MooseX::NonMoose'
RUN perl -MCPAN -e 'install Bio::SeqFeature::Generic'
RUN perl -MCPAN -e 'install Data::Compare'
RUN perl -MCPAN -e 'install Config::Scoped'
RUN perl -MCPAN -e 'install MooseX::StrictConstructor'
RUN perl -MCPAN -e 'install Crypt::SaltedHash'
RUN perl -MCPAN -e 'install Crypt::PBKDF2'
RUN perl -MCPAN -e 'install DBD::Pg'
RUN perl -MCPAN -e 'install Template::AutoFilter'
RUN perl -MCPAN -e 'install Readonly'
RUN perl -MCPAN -e 'install IPC::System::Simple'
RUN perl -MCPAN -e 'install Moose::Autobox'
RUN perl -MCPAN -e 'install Git::Wrapper'
RUN perl -MCPAN -e 'install Version::Next'
RUN perl -MCPAN -e 'install MooseX::AttributeShortcuts'
RUN perl -MCPAN -e 'install MooseX::Has::Sugar'
RUN perl -MCPAN -e 'install Bio::SeqFeature::Generic'
RUN perl -MCPAN -e 'install Bio::SeqFeature::Generic'
RUN perl -MCPAN -e 'install GraphViz2'
RUN perl -MCPAN -e 'install Bio::Tools::Primer3'
RUN perl -MCPAN -e 'install File::Sort'
RUN perl -MCPAN -e 'install Data::Pageset'
RUN perl -MCPAN -e 'install String::ShellQuote'
RUN perl -MCPAN -e 'install Catalyst::Action::RenderView'
RUN perl -MCPAN -e 'install Term::Size::Any'
RUN perl -MCPAN -e 'install Catalyst::Authentication::Store::DBIx::Class'
RUN perl -MCPAN -e 'install Catalyst::Authentication::Credential::HTTP'
RUN perl -MCPAN -e 'install Catalyst::Authentication::Credential::Password'
RUN perl -MCPAN -e 'install Dist::Zilla'
RUN perl -MCPAN -e 'install inc::Module::Install'
RUN perl -MCPAN -e 'install Module::Install::Catalyst'
RUN perl -MCPAN -e 'install Math::Round'
RUN perl -MCPAN -e 'install DateTime::Format::Pg'
RUN perl -MCPAN -e 'install Test::Perl::Critic'
RUN perl -MCPAN -e 'install Test::Manifest'
RUN perl -MCPAN -e 'install YAML::Old'
RUN perl -MCPAN -e 'install MIME::Lite'
RUN perl -MCPAN -e 'install JSON'
RUN perl -MCPAN -e 'install Template::Plugin::JSON'
RUN perl -MCPAN -e 'install Bio::SeqIO'
RUN perl -MCPAN -e 'install FCGI::Engine::Manager'
RUN perl -MCPAN -e 'install FCGI::ProcManager::Constrained'


#
# Create directories for static files and configs (root user mode)
RUN mkdir -p /lib/ && \
  mkdir -p /lims2/ && \
  mkdir -p /scripts/ && \
  mkdir -p /localhost/ && \
  mkdir -p /primers/ && \
  mkdir -p /mnt/volume/ \
  mkdir -p /logs/


# Copy static files and configs
COPY config/lims2_fcgi/fastcgi.yaml /lims2/
COPY config/lims2_fcgi/lims2.conf /etc/apache2/sites-available/
COPY config/opt/t87/global/ /global/
COPY config/nfs/team87/farm3_lims2_vms/conf/primers/ /primers/
COPY config/sudoers /etc/sudoers

# Enable rewrite - used in lims2 conf
RUN a2enmod rewrite && a2ensite lims2

#
# Clone Git repository used by LIMS2
RUN git clone https://github.com/htgt/WebApp-Common.git /tmp/WebApp-Common && \
  git clone https://github.com/htgt/Design-Creation.git /tmp/Design-Creation && \
  git clone https://github.com/htgt/Eng-Seq-Builder.git /tmp/Eng-Seq-Builder && \
  git clone https://github.com/htgt/HTGT-Admin-Utils.git /tmp/HTGT-Admin-Utils && \
  git clone https://github.com/htgt/Dist-Zilla-PluginBundle-Author-HTGT.git /tmp/Dist-Zilla-PluginBundle-Author-HTGT && \
  git clone https://github.com/htgt/LIMS2-REST-Client.git /tmp/LIMS2-REST-Client && \
  git clone https://github.com/htgt/LIMS2-Tasks.git /tmp/LIMS2-Tasks && \
  git clone https://github.com/htgt/LIMS2-WebApp.git /tmp/LIMS2-WebApp && \
  git clone https://github.com/htgt/LIMS2-Utils.git /tmp/LIMS2-Utils && \
  git clone https://github.com/htgt/HTGT-QC-Common.git /tmp/HTGT-QC-Common && \
  git clone https://github.com/htgt/LIMS2-Exception.git /tmp/LIMS2-Exception && \
  git clone https://github.com/fschwach/Bio-Tools-Primer3Redux.git /tmp/Bio-Tools-Primer3Redux && \
  git clone https://github.com/Ensembl/ensembl.git /tmp/ensembl && \
  cp -r  /tmp/WebApp-Common/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r  /tmp/WebApp-Common/shared_templates /opt/sci/global/software/lims2/lib/WebAppCommon/ && \
  cp -r /tmp/Design-Creation/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/Eng-Seq-Builder/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/HTGT-Admin-Utils/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/Dist-Zilla-PluginBundle-Author-HTGT/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/LIMS2-REST-Client/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/LIMS2-Tasks/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/LIMS2-WebApp/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/LIMS2-Utils/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/HTGT-QC-Common/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/LIMS2-Exception/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/Bio-Tools-Primer3Redux/lib/* /opt/sci/global/software/lims2/lib/ && \
  cp -r /tmp/ensembl/modules/Bio/* /opt/sci/global/software/lims2/lib/Bio/ && \
  rm -rf /tmp/WebApp-Common && \
  rm -rf /tmp/Design-Creation && \
  rm -rf /tmp/Eng-Seq-Builder && \
  rm -rf /tmp/HTGT-Admin-Utils && \
  rm -rf /tmp/Dist-Zilla-PluginBundle-Author-HTGT && \
  rm -rf /tmp/LIMS2-REST-Client && \
  rm -rf /tmp/LIMS2-Tasks && \
  rm -rf /tmp/LIMS2-WebApp && \
  rm -rf /tmp/LIMS2-Utils && \
  rm -rf /tmp/HTGT-QC-Common && \
  rm -rf /tmp/LIMS2-Exception && \
  rm -rf /tmp/Bio-Tools-Primer3Redux && \
  rm -rf /tmp/ensembl


# Temorary
# Missing 'crypted_hash' in Password.pm
COPY config/Password.pm Password.pm

#
# Change dependency path permissions
RUN chmod -R 755 /5.22.1/ && \
  chmod -R 755 /lib/ && \
  chmod -R 777 /localhost/

#
# Create new user
RUN adduser user && usermod -aG sudo user

#
# Define the default user that will run all commands
USER user

#
# env variables
ENV REDMINE_API_CONFIG=redmine_api_lab_tracker_test.conf \
  LIMS2_WEBAPP_CONFIG=webapp.conf \
  PERL5LIB= \
  SHARED_WEBAPP_TT_DIR= \
  LIMS2_ENSEMBL_USER= \
  LIMS2_ENSEMBL_HOST= \
  LIMS2_RNA_SEQ=/mnt/volume/lims2_managed_miseq_data/ \
  LIMS2_TEMP= \
  LIMS2_FCGI_CONFIG=fastcgi.yaml


#
# Create user-level configs
RUN mkdir -p /home/user/conf/LIMS2-WebApp/ && \
  mkdir -p /home/user/LIMS2-tmp/ \
  mkdir -p /home/user/var/tmp/lims2/run/

#
# Git config
COPY config/.gitconfig /home/user/.gitconfig
# LIMS2 config
COPY config/.lims2_local /home/user/.lims2_local
COPY config/conf/LIMS2-WebApp/* /home/user/conf/LIMS2-WebApp/
COPY config/LIMS2-tmp/* /home/user/LIMS2-tmp/
# LIMS2 front page reports
COPY config/fp_reports/* /opt/sci/local/report_cache/lims2_cache_fp_report/localhost/

#
# Clone LIMS2 Git repo
RUN mkdir /home/user/git_checkout && cd /home/user/git_checkout && git clone https://github.com/htgt/LIMS2-WebApp.git && \
cd LIMS2-WebApp && git checkout lims2_opens && git merge --no-edit devel

#
# Define a default working directory
WORKDIR /home/user/git_checkout/LIMS2-WebApp

#
# Temporary
 COPY config/PublicReports.pm /home/user/git_checkout/LIMS2-WebApp/lib/LIMS2/WebApp/Controller/PublicReports.pm
 COPY config/SponsorReportII.pm /home/user/git_checkout/LIMS2-WebApp/lib/LIMS2/Model/Util/SponsorReportII.pm
 COPY config/lims2_webapp.sh /home/user/git_checkout/LIMS2-WebApp/script/lims2_webapp.sh

#
# Set environment for LIMS2 and launch via FCGI and start Apache server
CMD ["/home/user/git_checkout/LIMS2-WebApp/script/lims2_webapp.sh"]
