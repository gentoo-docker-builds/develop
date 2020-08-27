# ------------------- latest stage3
FROM gentoo/stage3-amd64
ENV FEATURES="-mount-sandbox -ipc-sandbox -network-sandbox -pid-sandbox -usersandbox"

# ------------------- portage tree
COPY --from=gentoo/portage:latest /var/db/repos/gentoo /var/db/repos/gentoo
