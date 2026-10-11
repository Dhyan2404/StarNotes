package com.tencent.cos.xml.transfer;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.fasterxml.jackson.core.JsonFactory;
import com.google.firebase.installations.local.PersistedInstallation;
import com.tencent.cos.xml.model.bucket.PutBucketIntelligentTieringRequest;
import com.tencent.cos.xml.model.tag.AccessControlPolicy;
import com.tencent.cos.xml.model.tag.BucketLoggingStatus;
import com.tencent.cos.xml.model.tag.CORSConfiguration;
import com.tencent.cos.xml.model.tag.CreateBucketConfiguration;
import com.tencent.cos.xml.model.tag.Delete;
import com.tencent.cos.xml.model.tag.DomainConfiguration;
import com.tencent.cos.xml.model.tag.InventoryConfiguration;
import com.tencent.cos.xml.model.tag.LifecycleConfiguration;
import com.tencent.cos.xml.model.tag.ReplicationConfiguration;
import com.tencent.cos.xml.model.tag.RestoreConfigure;
import com.tencent.cos.xml.model.tag.Tagging;
import com.tencent.cos.xml.model.tag.VersioningConfiguration;
import com.tencent.cos.xml.model.tag.WebsiteConfiguration;
import com.tencent.cos.xml.model.tag.eventstreaming.CSVInput;
import com.tencent.cos.xml.model.tag.eventstreaming.CSVOutput;
import com.tencent.cos.xml.model.tag.eventstreaming.JSONInput;
import com.tencent.cos.xml.model.tag.eventstreaming.JSONOutput;
import com.tencent.cos.xml.model.tag.eventstreaming.SelectRequest;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpHeaders;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class XmlBuilder extends XmlSlimBuilder {
    private static void addElement(XmlSerializer xmlSerializer, String str, String str2) throws IOException {
        if (str2 != null) {
            xmlSerializer.startTag("", str);
            xmlSerializer.text(str2);
            xmlSerializer.endTag("", str);
        }
    }

    public static String buildAccessControlPolicyXML(AccessControlPolicy accessControlPolicy) throws XmlPullParserException, IOException {
        if (accessControlPolicy == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "AccessControlPolicy");
        newSerializer.startTag("", "Owner");
        addElement(newSerializer, "ID", accessControlPolicy.owner.f93309id);
        newSerializer.endTag("", "Owner");
        newSerializer.startTag("", "AccessControlList");
        for (AccessControlPolicy.Grant grant : accessControlPolicy.accessControlList.grants) {
            newSerializer.startTag("", "Grant");
            if (!TextUtils.isEmpty(grant.grantee.uri)) {
                newSerializer.setPrefix("xsi", "http://www.w3.org/2001/XMLSchema-instance");
                newSerializer.startTag("", "Grantee");
                newSerializer.attribute("", "xsi:type", "CanonicalUser");
                addElement(newSerializer, "URI", grant.grantee.uri);
                newSerializer.endTag("", "Grantee");
            } else if (!TextUtils.isEmpty(grant.grantee.f93308id)) {
                newSerializer.setPrefix("xsi", "http://www.w3.org/2001/XMLSchema-instance");
                newSerializer.startTag("", "Grantee");
                newSerializer.attribute("", "xsi:type", "Group");
                addElement(newSerializer, "ID", grant.grantee.f93308id);
                newSerializer.endTag("", "Grantee");
            }
            addElement(newSerializer, "Permission", grant.permission);
            newSerializer.endTag("", "Grant");
        }
        newSerializer.endTag("", "AccessControlList");
        newSerializer.endTag("", "AccessControlPolicy");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildBucketLogging(BucketLoggingStatus bucketLoggingStatus) throws XmlPullParserException, IOException {
        if (bucketLoggingStatus == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "BucketLoggingStatus");
        if (bucketLoggingStatus.loggingEnabled != null) {
            newSerializer.startTag("", "LoggingEnabled");
            addElement(newSerializer, "TargetBucket", bucketLoggingStatus.loggingEnabled.targetBucket);
            addElement(newSerializer, "TargetPrefix", bucketLoggingStatus.loggingEnabled.targetPrefix);
            newSerializer.endTag("", "LoggingEnabled");
        }
        newSerializer.endTag("", "BucketLoggingStatus");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildCORSConfigurationXML(CORSConfiguration cORSConfiguration) throws XmlPullParserException, IOException {
        if (cORSConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "CORSConfiguration");
        List<CORSConfiguration.CORSRule> list = cORSConfiguration.corsRules;
        if (list != null) {
            for (CORSConfiguration.CORSRule cORSRule : list) {
                if (cORSRule != null) {
                    newSerializer.startTag("", "CORSRule");
                    addElement(newSerializer, "ID", cORSRule.f93310id);
                    addElement(newSerializer, "AllowedOrigin", cORSRule.allowedOrigin);
                    List<String> list2 = cORSRule.allowedMethod;
                    if (list2 != null) {
                        Iterator<String> it2 = list2.iterator();
                        while (it2.hasNext()) {
                            addElement(newSerializer, "AllowedMethod", it2.next());
                        }
                    }
                    List<String> list3 = cORSRule.allowedHeader;
                    if (list3 != null) {
                        Iterator<String> it3 = list3.iterator();
                        while (it3.hasNext()) {
                            addElement(newSerializer, "AllowedHeader", it3.next());
                        }
                    }
                    List<String> list4 = cORSRule.exposeHeader;
                    if (list4 != null) {
                        Iterator<String> it4 = list4.iterator();
                        while (it4.hasNext()) {
                            addElement(newSerializer, "ExposeHeader", it4.next());
                        }
                    }
                    addElement(newSerializer, "MaxAgeSeconds", String.valueOf(cORSRule.maxAgeSeconds));
                    newSerializer.endTag("", "CORSRule");
                }
            }
        }
        newSerializer.endTag("", "CORSConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildCreateBucketConfiguration(CreateBucketConfiguration createBucketConfiguration) throws XmlPullParserException, IOException {
        if (createBucketConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "CreateBucketConfiguration");
        addElement(newSerializer, "BucketAZConfig", createBucketConfiguration.bucketAzConfig);
        newSerializer.endTag("", "CreateBucketConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildDelete(Delete delete) throws XmlPullParserException, IOException {
        if (delete == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "Delete");
        addElement(newSerializer, "Quiet", String.valueOf(delete.quiet));
        List<Delete.DeleteObject> list = delete.deleteObjects;
        if (list != null) {
            for (Delete.DeleteObject deleteObject : list) {
                if (deleteObject != null) {
                    newSerializer.startTag("", "Object");
                    addElement(newSerializer, "Key", deleteObject.key);
                    addElement(newSerializer, "VersionId", deleteObject.versionId);
                    newSerializer.endTag("", "Object");
                }
            }
        }
        newSerializer.endTag("", "Delete");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildDomainConfiguration(DomainConfiguration domainConfiguration) throws IOException, XmlPullParserException {
        if (domainConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "DomainConfiguration");
        List<DomainConfiguration.DomainRule> list = domainConfiguration.domainRules;
        if (list != null && list.size() > 0) {
            for (DomainConfiguration.DomainRule domainRule : domainConfiguration.domainRules) {
                newSerializer.startTag("", "DomainRule");
                addElement(newSerializer, PersistedInstallation.f35952i, domainRule.status);
                addElement(newSerializer, "Name", domainRule.name);
                addElement(newSerializer, "Type", domainRule.type);
                addElement(newSerializer, "ForcedReplacement", domainRule.forcedReplacement);
                newSerializer.endTag("", "DomainRule");
            }
        }
        newSerializer.endTag("", "DomainConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildInventoryConfiguration(InventoryConfiguration inventoryConfiguration) throws IOException, XmlPullParserException {
        if (inventoryConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "InventoryConfiguration");
        String str = inventoryConfiguration.f93311id;
        if (str != null) {
            addElement(newSerializer, PackageRelationship.ID_ATTRIBUTE_NAME, str);
        }
        addElement(newSerializer, "IsEnabled", inventoryConfiguration.isEnabled ? "true" : "false");
        if (inventoryConfiguration.destination != null) {
            newSerializer.startTag("", HttpHeaders.DESTINATION);
            if (inventoryConfiguration.destination.cosBucketDestination != null) {
                newSerializer.startTag("", "COSBucketDestination");
                String str2 = inventoryConfiguration.destination.cosBucketDestination.format;
                if (str2 != null) {
                    addElement(newSerializer, "Format", str2);
                }
                String str3 = inventoryConfiguration.destination.cosBucketDestination.accountId;
                if (str3 != null) {
                    addElement(newSerializer, "AccountId", str3);
                }
                String str4 = inventoryConfiguration.destination.cosBucketDestination.bucket;
                if (str4 != null) {
                    addElement(newSerializer, "Bucket", str4);
                }
                String str5 = inventoryConfiguration.destination.cosBucketDestination.prefix;
                if (str5 != null) {
                    addElement(newSerializer, "Prefix", str5);
                }
                if (inventoryConfiguration.destination.cosBucketDestination.encryption != null) {
                    newSerializer.startTag("", "Encryption");
                    addElement(newSerializer, "SSE-COS", inventoryConfiguration.destination.cosBucketDestination.encryption.sSECOS);
                    newSerializer.endTag("", "Encryption");
                }
                newSerializer.endTag("", "COSBucketDestination");
            }
            newSerializer.endTag("", HttpHeaders.DESTINATION);
        }
        InventoryConfiguration.Schedule schedule = inventoryConfiguration.schedule;
        if (schedule != null && schedule.frequency != null) {
            newSerializer.startTag("", "Schedule");
            addElement(newSerializer, "Frequency", inventoryConfiguration.schedule.frequency);
            newSerializer.endTag("", "Schedule");
        }
        InventoryConfiguration.Filter filter = inventoryConfiguration.filter;
        if (filter != null && filter.prefix != null) {
            newSerializer.startTag("", "Filter");
            addElement(newSerializer, "Prefix", inventoryConfiguration.filter.prefix);
            newSerializer.endTag("", "Filter");
        }
        String str6 = inventoryConfiguration.includedObjectVersions;
        if (str6 != null) {
            addElement(newSerializer, "IncludedObjectVersions", str6);
        }
        InventoryConfiguration.OptionalFields optionalFields = inventoryConfiguration.optionalFields;
        if (optionalFields != null && optionalFields.fields != null) {
            newSerializer.startTag("", "OptionalFields");
            Iterator<String> it2 = inventoryConfiguration.optionalFields.fields.iterator();
            while (it2.hasNext()) {
                addElement(newSerializer, "Field", it2.next());
            }
            newSerializer.endTag("", "OptionalFields");
        }
        newSerializer.endTag("", "InventoryConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildLifecycleConfigurationXML(LifecycleConfiguration lifecycleConfiguration) throws XmlPullParserException, IOException {
        if (lifecycleConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "LifecycleConfiguration");
        List<LifecycleConfiguration.Rule> list = lifecycleConfiguration.rules;
        if (list != null) {
            for (LifecycleConfiguration.Rule rule : list) {
                if (rule != null) {
                    newSerializer.startTag("", "Rule");
                    addElement(newSerializer, "ID", rule.f93312id);
                    if (rule.filter != null) {
                        newSerializer.startTag("", "Filter");
                        addElement(newSerializer, "Prefix", rule.filter.prefix);
                        newSerializer.endTag("", "Filter");
                    }
                    addElement(newSerializer, PersistedInstallation.f35952i, rule.status);
                    if (rule.transition != null) {
                        newSerializer.startTag("", "Transition");
                        addElement(newSerializer, "Days", String.valueOf(rule.transition.days));
                        addElement(newSerializer, CreateBucketRequest.TAB_STORAGECLASS, rule.transition.storageClass);
                        addElement(newSerializer, "Date", rule.transition.date);
                        newSerializer.endTag("", "Transition");
                    }
                    if (rule.expiration != null) {
                        newSerializer.startTag("", "Expiration");
                        addElement(newSerializer, "Days", String.valueOf(rule.expiration.days));
                        addElement(newSerializer, "ExpiredObjectDeleteMarker", rule.expiration.expiredObjectDeleteMarker);
                        addElement(newSerializer, "Date", rule.expiration.date);
                        newSerializer.endTag("", "Expiration");
                    }
                    if (rule.noncurrentVersionTransition != null) {
                        newSerializer.startTag("", "NoncurrentVersionTransition");
                        addElement(newSerializer, "NoncurrentDays", String.valueOf(rule.noncurrentVersionTransition.noncurrentDays));
                        addElement(newSerializer, CreateBucketRequest.TAB_STORAGECLASS, rule.noncurrentVersionTransition.storageClass);
                        newSerializer.endTag("", "NoncurrentVersionTransition");
                    }
                    if (rule.noncurrentVersionExpiration != null) {
                        newSerializer.startTag("", "NoncurrentVersionExpiration");
                        addElement(newSerializer, "NoncurrentDays", String.valueOf(rule.noncurrentVersionExpiration.noncurrentDays));
                        newSerializer.endTag("", "NoncurrentVersionExpiration");
                    }
                    if (rule.abortIncompleteMultiUpload != null) {
                        newSerializer.startTag("", "AbortIncompleteMultipartUpload");
                        addElement(newSerializer, "DaysAfterInitiation", String.valueOf(rule.abortIncompleteMultiUpload.daysAfterInitiation));
                        newSerializer.endTag("", "AbortIncompleteMultipartUpload");
                    }
                    newSerializer.endTag("", "Rule");
                }
            }
        }
        newSerializer.endTag("", "LifecycleConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildPutBucketAccelerateXML(boolean z) throws XmlPullParserException, IOException {
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "AccelerateConfiguration");
        addElement(newSerializer, PersistedInstallation.f35952i, z ? PutBucketIntelligentTieringRequest.STATUS_ENABLED : PutBucketIntelligentTieringRequest.STATUS_SUSPEND);
        newSerializer.endTag("", "AccelerateConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildReplicationConfiguration(ReplicationConfiguration replicationConfiguration) throws XmlPullParserException, IOException {
        if (replicationConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "ReplicationConfiguration");
        addElement(newSerializer, "Role", replicationConfiguration.role);
        List<ReplicationConfiguration.Rule> list = replicationConfiguration.rules;
        if (list != null) {
            for (ReplicationConfiguration.Rule rule : list) {
                if (rule != null) {
                    newSerializer.startTag("", "Rule");
                    addElement(newSerializer, PersistedInstallation.f35952i, rule.status);
                    addElement(newSerializer, "ID", rule.f93320id);
                    addElement(newSerializer, "Prefix", rule.prefix);
                    if (rule.destination != null) {
                        newSerializer.startTag("", HttpHeaders.DESTINATION);
                        addElement(newSerializer, "Bucket", rule.destination.bucket);
                        addElement(newSerializer, CreateBucketRequest.TAB_STORAGECLASS, rule.destination.storageClass);
                        newSerializer.endTag("", HttpHeaders.DESTINATION);
                    }
                    newSerializer.endTag("", "Rule");
                }
            }
        }
        newSerializer.endTag("", "ReplicationConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildRestore(RestoreConfigure restoreConfigure) throws XmlPullParserException, IOException {
        if (restoreConfigure == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "RestoreRequest");
        addElement(newSerializer, "Days", String.valueOf(restoreConfigure.days));
        if (restoreConfigure.casJobParameters != null) {
            newSerializer.startTag("", "CASJobParameters");
            addElement(newSerializer, "Tier", restoreConfigure.casJobParameters.tier);
            newSerializer.endTag("", "CASJobParameters");
        }
        newSerializer.endTag("", "RestoreRequest");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildSelectRequest(SelectRequest selectRequest) throws IOException, XmlPullParserException {
        if (selectRequest == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "SelectRequest");
        addElement(newSerializer, "Expression", selectRequest.getExpression());
        addElement(newSerializer, "ExpressionType", selectRequest.getExpressionType());
        newSerializer.startTag("", "InputSerialization");
        addElement(newSerializer, "CompressionType", selectRequest.getInputSerialization().getCompressionType());
        if (selectRequest.getInputSerialization().getCsv() != null) {
            CSVInput csv = selectRequest.getInputSerialization().getCsv();
            newSerializer.startTag("", "CSV");
            addElement(newSerializer, "FileHeaderInfo", csv.getFileHeaderInfo());
            addElement(newSerializer, "RecordDelimiter", csv.getRecordDelimiterAsString());
            addElement(newSerializer, "FieldDelimiter", csv.getFieldDelimiterAsString());
            addElement(newSerializer, "QuoteCharacter", csv.getQuoteCharacterAsString());
            addElement(newSerializer, "QuoteEscapeCharacter", csv.getQuoteEscapeCharacterAsString());
            addElement(newSerializer, "Comments", csv.getCommentsAsString());
            addElement(newSerializer, "AllowQuotedRecordDelimiter", csv.getAllowQuotedRecordDelimiter().booleanValue() ? "TRUE" : "FALSE");
            newSerializer.endTag("", "CSV");
        } else if (selectRequest.getInputSerialization().getJson() != null) {
            JSONInput json = selectRequest.getInputSerialization().getJson();
            newSerializer.startTag("", JsonFactory.FORMAT_NAME_JSON);
            addElement(newSerializer, "Type", json.getType());
            newSerializer.endTag("", JsonFactory.FORMAT_NAME_JSON);
        }
        newSerializer.endTag("", "InputSerialization");
        newSerializer.startTag("", "OutputSerialization");
        if (selectRequest.getOutputSerialization().getCsv() != null) {
            CSVOutput csv2 = selectRequest.getOutputSerialization().getCsv();
            newSerializer.startTag("", "CSV");
            addElement(newSerializer, "QuoteFields", csv2.getQuoteFields());
            addElement(newSerializer, "RecordDelimiter", csv2.getRecordDelimiterAsString());
            addElement(newSerializer, "FieldDelimiter", csv2.getFieldDelimiterAsString());
            addElement(newSerializer, "QuoteCharacter", csv2.getQuoteCharacterAsString());
            addElement(newSerializer, "QuoteEscapeCharacter", csv2.getQuoteEscapeCharacterAsString());
            newSerializer.endTag("", "CSV");
        } else if (selectRequest.getOutputSerialization().getJson() != null) {
            JSONOutput json2 = selectRequest.getOutputSerialization().getJson();
            newSerializer.startTag("", JsonFactory.FORMAT_NAME_JSON);
            addElement(newSerializer, "RecordDelimiter", json2.getRecordDelimiterAsString());
            newSerializer.endTag("", JsonFactory.FORMAT_NAME_JSON);
        }
        newSerializer.endTag("", "OutputSerialization");
        newSerializer.startTag("", "RequestProgress");
        addElement(newSerializer, PutBucketIntelligentTieringRequest.STATUS_ENABLED, String.valueOf(selectRequest.getRequestProgress().getEnabled()));
        newSerializer.endTag("", "RequestProgress");
        newSerializer.endTag("", "SelectRequest");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildTagging(Tagging tagging) throws XmlPullParserException, IOException {
        if (tagging == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "Tagging");
        newSerializer.startTag("", "TagSet");
        if (!tagging.tagSet.tag.isEmpty()) {
            for (Tagging.Tag tag : tagging.tagSet.tag) {
                newSerializer.startTag("", "Tag");
                addElement(newSerializer, "Key", tag.key);
                addElement(newSerializer, "Value", tag.value);
                newSerializer.endTag("", "Tag");
            }
        }
        newSerializer.endTag("", "TagSet");
        newSerializer.endTag("", "Tagging");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildVersioningConfiguration(VersioningConfiguration versioningConfiguration) throws XmlPullParserException, IOException {
        if (versioningConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "VersioningConfiguration");
        addElement(newSerializer, PersistedInstallation.f35952i, versioningConfiguration.status);
        newSerializer.endTag("", "VersioningConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    public static String buildWebsiteConfiguration(WebsiteConfiguration websiteConfiguration) throws XmlPullParserException, IOException {
        if (websiteConfiguration == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
        newSerializer.setOutput(stringWriter);
        newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        newSerializer.startDocument("UTF-8", null);
        newSerializer.startTag("", "WebsiteConfiguration");
        if (websiteConfiguration.indexDocument != null) {
            newSerializer.startTag("", "IndexDocument");
            String str = websiteConfiguration.indexDocument.suffix;
            if (str != null) {
                addElement(newSerializer, "Suffix", str);
            }
            newSerializer.endTag("", "IndexDocument");
        }
        if (websiteConfiguration.errorDocument != null) {
            newSerializer.startTag("", "ErrorDocument");
            String str2 = websiteConfiguration.errorDocument.key;
            if (str2 != null) {
                addElement(newSerializer, "Key", str2);
            }
            newSerializer.endTag("", "ErrorDocument");
        }
        if (websiteConfiguration.redirectAllRequestTo != null) {
            newSerializer.startTag("", "RedirectAllRequestTo");
            String str3 = websiteConfiguration.redirectAllRequestTo.protocol;
            if (str3 != null) {
                addElement(newSerializer, "Protocol", str3);
            }
            newSerializer.endTag("", "RedirectAllRequestTo");
        }
        List<WebsiteConfiguration.RoutingRule> list = websiteConfiguration.routingRules;
        if (list != null && list.size() > 0) {
            newSerializer.startTag("", "RoutingRules");
            for (WebsiteConfiguration.RoutingRule routingRule : websiteConfiguration.routingRules) {
                newSerializer.startTag("", "RoutingRule");
                if (routingRule.contidion != null) {
                    newSerializer.startTag("", "Condition");
                    int i = routingRule.contidion.httpErrorCodeReturnedEquals;
                    if (i != -1) {
                        addElement(newSerializer, "HttpErrorCodeReturnedEquals", String.valueOf(i));
                    }
                    String str4 = routingRule.contidion.keyPrefixEquals;
                    if (str4 != null) {
                        addElement(newSerializer, "KeyPrefixEquals", str4);
                    }
                    newSerializer.endTag("", "Condition");
                }
                if (routingRule.redirect != null) {
                    newSerializer.startTag("", "Redirect");
                    String str5 = routingRule.redirect.protocol;
                    if (str5 != null) {
                        addElement(newSerializer, "Protocol", str5);
                    }
                    String str6 = routingRule.redirect.replaceKeyPrefixWith;
                    if (str6 != null) {
                        addElement(newSerializer, "ReplaceKeyPrefixWith", str6);
                    }
                    String str7 = routingRule.redirect.replaceKeyWith;
                    if (str7 != null) {
                        addElement(newSerializer, "ReplaceKeyWith", str7);
                    }
                    newSerializer.endTag("", "Redirect");
                }
                newSerializer.endTag("", "RoutingRule");
            }
            newSerializer.endTag("", "RoutingRules");
        }
        newSerializer.endTag("", "WebsiteConfiguration");
        newSerializer.endDocument();
        return removeXMLHeader(stringWriter.toString());
    }

    private static String removeXMLHeader(String str) {
        return (str == null || !str.startsWith("<?xml")) ? str : str.substring(str.indexOf("?>") + 2);
    }
}
