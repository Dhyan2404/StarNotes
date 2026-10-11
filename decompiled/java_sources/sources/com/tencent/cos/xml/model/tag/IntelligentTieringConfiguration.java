package com.tencent.cos.xml.model.tag;

import com.google.firebase.installations.local.PersistedInstallation;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;

@XmlBean
/* loaded from: classes10.dex */
public class IntelligentTieringConfiguration {

    @XmlElement(name = PersistedInstallation.f35952i)
    public String status;

    @XmlElement(name = "Transition")
    public Transition transition;

    @XmlBean
    /* loaded from: classes10.dex */
    public static class Transition {

        @XmlElement(name = "Days")
        public int days;

        @XmlElement(name = "RequestFrequent")
        public int requestFrequent;
    }

    public IntelligentTieringConfiguration(String str, int i) {
        this.status = str;
        Transition transition = new Transition();
        this.transition = transition;
        transition.days = i;
        transition.requestFrequent = 1;
    }

    public IntelligentTieringConfiguration() {
    }
}
