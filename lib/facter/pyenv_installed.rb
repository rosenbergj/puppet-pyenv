Facter.add(:pyenv_installed) do
  has_weight 20
  setcode do
    if not Facter.value('pyenv_binary').nil? and File.exists?(Facter.value('pyenv_binary'))
      true
    end
  end
end

Facter.add(:pyenv_installed) do
  has_weight 10
  setcode do
    if not Facter::Util::Resolution.which('pyenv').nil?
      true
    end
  end
end

Facter.add(:pyenv_installed) do
  has_weight 0
  setcode do
    if File.exists?('/usr/local/pyenv/bin/pyenv')
      true
    else
      false
    end
  end
end
