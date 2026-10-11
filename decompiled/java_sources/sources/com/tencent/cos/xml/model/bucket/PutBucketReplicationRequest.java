package com.tencent.cos.xml.model.bucket;

import com.tencent.cos.xml.model.tag.ReplicationConfiguration;
import com.tencent.cos.xml.transfer.XmlBuilder;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class PutBucketReplicationRequest extends BucketRequest {
    private ReplicationConfiguration replicationConfiguration;

    /* loaded from: classes10.dex */
    public static class RuleStruct {
        public String appid;
        public String bucket;

        /* renamed from: id */
        public String f93279id;
        public boolean isEnable;
        public String prefix;
        public String region;
        public String storageClass;
    }

    public PutBucketReplicationRequest(String str) {
        super(str);
        ReplicationConfiguration replicationConfiguration = new ReplicationConfiguration();
        this.replicationConfiguration = replicationConfiguration;
        replicationConfiguration.rules = new ArrayList();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "PUT";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("replication", null);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public boolean isNeedMD5() {
        return true;
    }

    public void setReplicationConfigurationWithRole(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.replicationConfiguration.role = "qcs::cam::uin/" + str + ":uin/" + str2;
    }

    public void setReplicationConfigurationWithRule(RuleStruct ruleStruct) {
        if (ruleStruct != null) {
            ReplicationConfiguration.Rule rule = new ReplicationConfiguration.Rule();
            rule.f93320id = ruleStruct.f93279id;
            rule.status = ruleStruct.isEnable ? PutBucketIntelligentTieringRequest.STATUS_ENABLED : "Disabled";
            rule.prefix = ruleStruct.prefix;
            ReplicationConfiguration.Destination destination = new ReplicationConfiguration.Destination();
            destination.storageClass = ruleStruct.storageClass;
            destination.bucket = "qcs::cos:" + ruleStruct.region + "::" + ruleStruct.bucket;
            rule.destination = destination;
            this.replicationConfiguration.rules.add(rule);
        }
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer xmlBuilder() throws XmlPullParserException, IOException {
        return RequestBodySerializer.string("application/xml", XmlBuilder.buildReplicationConfiguration(this.replicationConfiguration));
    }
}
