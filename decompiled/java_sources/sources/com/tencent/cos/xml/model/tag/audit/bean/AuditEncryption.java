package com.tencent.cos.xml.model.tag.audit.bean;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(name = "Encryption")
/* loaded from: classes10.dex */
public class AuditEncryption {
    public String algorithm;

    /* renamed from: iV */
    public String f93321iV;
    public String key;
    public String keyId = "1.0";
    public int keyType;
}
