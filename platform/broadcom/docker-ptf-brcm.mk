# docker image for docker-ptf-brcm

DOCKER_PTF_BRCM = docker-ptf-brcm.gz
$(DOCKER_PTF_BRCM)_PATH = $(DOCKERS_PATH)/docker-ptf-saithrift
$(DOCKER_PTF_BRCM)_DEPENDS += $(PYTHON_SAITHRIFT)
$(DOCKER_PTF_BRCM)_LOAD_DOCKERS += $(DOCKER_PTF)
SONIC_DOCKER_IMAGES += $(DOCKER_PTF_BRCM)
SONIC_STRETCH_DOCKERS += $(DOCKER_PTF_BRCM)
