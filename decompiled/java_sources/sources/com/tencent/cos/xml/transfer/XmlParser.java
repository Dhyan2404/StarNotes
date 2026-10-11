package com.tencent.cos.xml.transfer;

import android.util.Xml;
import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.dropbox.core.android.AuthActivity;
import com.google.firebase.installations.local.PersistedInstallation;
import com.tencent.cos.xml.model.tag.AccelerateConfiguration;
import com.tencent.cos.xml.model.tag.AccessControlPolicy;
import com.tencent.cos.xml.model.tag.BucketLoggingStatus;
import com.tencent.cos.xml.model.tag.CORSConfiguration;
import com.tencent.cos.xml.model.tag.DeleteResult;
import com.tencent.cos.xml.model.tag.DomainConfiguration;
import com.tencent.cos.xml.model.tag.InventoryConfiguration;
import com.tencent.cos.xml.model.tag.LifecycleConfiguration;
import com.tencent.cos.xml.model.tag.ListBucket;
import com.tencent.cos.xml.model.tag.ListBucketVersions;
import com.tencent.cos.xml.model.tag.ListInventoryConfiguration;
import com.tencent.cos.xml.model.tag.ListVersionResult;
import com.tencent.cos.xml.model.tag.LocationConstraint;
import com.tencent.cos.xml.model.tag.ReplicationConfiguration;
import com.tencent.cos.xml.model.tag.Tagging;
import com.tencent.cos.xml.model.tag.VersioningConfiguration;
import com.tencent.cos.xml.model.tag.WebsiteConfiguration;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import org.apache.http.HttpHeaders;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class XmlParser extends XmlSlimParser {
    public static void parseAccelerateConfiguration(InputStream inputStream, AccelerateConfiguration accelerateConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (PersistedInstallation.f35952i.equalsIgnoreCase(name)) {
                    newPullParser.next();
                    accelerateConfiguration.status = newPullParser.getText();
                } else if ("Type".equalsIgnoreCase(name)) {
                    newPullParser.next();
                    accelerateConfiguration.type = newPullParser.getText();
                }
            }
        }
    }

    public static void parseAccessControlPolicy(InputStream inputStream, AccessControlPolicy accessControlPolicy) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        AccessControlPolicy.AccessControlList accessControlList = new AccessControlPolicy.AccessControlList();
        accessControlPolicy.accessControlList = accessControlList;
        accessControlList.grants = new ArrayList();
        AccessControlPolicy.Owner owner = null;
        AccessControlPolicy.Grant grant = null;
        AccessControlPolicy.Grantee grantee = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("Owner")) {
                    owner = new AccessControlPolicy.Owner();
                } else if (name.equalsIgnoreCase("ID")) {
                    newPullParser.next();
                    if (owner != null) {
                        owner.f93309id = newPullParser.getText();
                    } else if (grantee != null) {
                        grantee.f93308id = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("DisplayName")) {
                    newPullParser.next();
                    if (owner != null) {
                        owner.displayName = newPullParser.getText();
                    } else if (grantee != null) {
                        grantee.displayName = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Grant")) {
                    grant = new AccessControlPolicy.Grant();
                } else if (name.equalsIgnoreCase("Grantee")) {
                    grantee = new AccessControlPolicy.Grantee();
                } else if (name.equalsIgnoreCase("URI")) {
                    newPullParser.next();
                    if (grantee != null) {
                        grantee.uri = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Permission")) {
                    newPullParser.next();
                    if (grant != null) {
                        grant.permission = newPullParser.getText();
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Owner")) {
                    accessControlPolicy.owner = owner;
                    owner = null;
                } else if (name2.equalsIgnoreCase("Grant")) {
                    accessControlPolicy.accessControlList.grants.add(grant);
                    grant = null;
                } else if (name2.equalsIgnoreCase("Grantee")) {
                    if (grant != null) {
                        grant.grantee = grantee;
                    }
                    grantee = null;
                }
            }
        }
    }

    public static void parseBucketLoggingStatus(InputStream inputStream, BucketLoggingStatus bucketLoggingStatus) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        BucketLoggingStatus.LoggingEnabled loggingEnabled = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("LoggingEnabled")) {
                    loggingEnabled = new BucketLoggingStatus.LoggingEnabled();
                } else if (name.equalsIgnoreCase("TargetBucket")) {
                    newPullParser.next();
                    if (loggingEnabled != null) {
                        loggingEnabled.targetBucket = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("TargetPrefix")) {
                    newPullParser.next();
                    if (loggingEnabled != null) {
                        loggingEnabled.targetPrefix = newPullParser.getText();
                    }
                }
            } else if (eventType == 3 && newPullParser.getName().equalsIgnoreCase("LoggingEnabled")) {
                bucketLoggingStatus.loggingEnabled = loggingEnabled;
                loggingEnabled = null;
            }
        }
    }

    public static void parseCORSConfiguration(InputStream inputStream, CORSConfiguration cORSConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        cORSConfiguration.corsRules = new ArrayList();
        CORSConfiguration.CORSRule cORSRule = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("CORSRule")) {
                    cORSRule = new CORSConfiguration.CORSRule();
                } else if (name.equalsIgnoreCase("ID")) {
                    newPullParser.next();
                    if (cORSRule != null) {
                        cORSRule.f93310id = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("AllowedOrigin")) {
                    newPullParser.next();
                    if (cORSRule != null) {
                        cORSRule.allowedOrigin = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("AllowedMethod")) {
                    newPullParser.next();
                    if (cORSRule != null && cORSRule.allowedMethod == null) {
                        cORSRule.allowedMethod = new ArrayList();
                    }
                    if (cORSRule != null) {
                        cORSRule.allowedMethod.add(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("AllowedHeader")) {
                    newPullParser.next();
                    if (cORSRule != null && cORSRule.allowedHeader == null) {
                        cORSRule.allowedHeader = new ArrayList();
                    }
                    if (cORSRule != null) {
                        cORSRule.allowedHeader.add(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("ExposeHeader")) {
                    newPullParser.next();
                    if (cORSRule != null && cORSRule.exposeHeader == null) {
                        cORSRule.exposeHeader = new ArrayList();
                    }
                    if (cORSRule != null) {
                        cORSRule.exposeHeader.add(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("MaxAgeSeconds")) {
                    newPullParser.next();
                    if (cORSRule != null) {
                        cORSRule.maxAgeSeconds = Integer.parseInt(newPullParser.getText());
                    }
                }
            } else if (eventType == 3 && newPullParser.getName().equalsIgnoreCase("CORSRule")) {
                cORSConfiguration.corsRules.add(cORSRule);
                cORSRule = null;
            }
        }
    }

    public static void parseDeleteResult(InputStream inputStream, DeleteResult deleteResult) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        deleteResult.errorList = new ArrayList();
        deleteResult.deletedList = new ArrayList();
        DeleteResult.Deleted deleted = null;
        DeleteResult.Error error = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("Deleted")) {
                    deleted = new DeleteResult.Deleted();
                } else if (name.equalsIgnoreCase("Error")) {
                    error = new DeleteResult.Error();
                } else if (name.equalsIgnoreCase("Key")) {
                    newPullParser.next();
                    if (deleted != null) {
                        deleted.key = newPullParser.getText();
                    } else if (error != null) {
                        error.key = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("VersionId")) {
                    newPullParser.next();
                    if (deleted != null) {
                        deleted.versionId = newPullParser.getText();
                    } else if (error != null) {
                        error.versionId = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("DeleteMarker")) {
                    newPullParser.next();
                    if (deleted != null) {
                        deleted.deleteMarker = Boolean.parseBoolean(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("DeleteMarkerVersionId")) {
                    newPullParser.next();
                    if (deleted != null) {
                        deleted.deleteMarkerVersionId = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Message")) {
                    newPullParser.next();
                    if (error != null) {
                        error.message = newPullParser.getText();
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Deleted")) {
                    deleteResult.deletedList.add(deleted);
                    deleted = null;
                } else if (name2.equalsIgnoreCase("Error")) {
                    deleteResult.errorList.add(error);
                    error = null;
                }
            }
        }
    }

    public static void parseDomainConfiguration(InputStream inputStream, DomainConfiguration domainConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        domainConfiguration.domainRules = new ArrayList();
        DomainConfiguration.DomainRule domainRule = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("DomainRule")) {
                    domainRule = new DomainConfiguration.DomainRule();
                } else if (name.equalsIgnoreCase(PersistedInstallation.f35952i)) {
                    newPullParser.next();
                    if (domainRule != null) {
                        domainRule.status = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Name")) {
                    newPullParser.next();
                    if (domainRule != null) {
                        domainRule.name = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Type")) {
                    newPullParser.next();
                    if (domainRule != null) {
                        domainRule.type = newPullParser.getText();
                    }
                }
            } else if (eventType == 3 && newPullParser.getName().equalsIgnoreCase("DomainRule")) {
                domainConfiguration.domainRules.add(domainRule);
                domainRule = null;
            }
        }
    }

    public static void parseGetBucketObjectVersionsResult(InputStream inputStream, ListVersionResult listVersionResult) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        listVersionResult.commonPrefixes = linkedList;
        listVersionResult.deleteMarkers = linkedList3;
        listVersionResult.versions = linkedList2;
        ListVersionResult.Owner owner = null;
        ListVersionResult.DeleteMarker deleteMarker = null;
        ListVersionResult.Version version = null;
        ListVersionResult.CommonPrefixes commonPrefixes = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("Name")) {
                    newPullParser.next();
                    listVersionResult.name = newPullParser.getText();
                } else if (name.equalsIgnoreCase("Encoding-Type")) {
                    newPullParser.next();
                    listVersionResult.encodingType = newPullParser.getText();
                } else if (name.equalsIgnoreCase("KeyMarker")) {
                    newPullParser.next();
                    listVersionResult.keyMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("VersionIdMarker")) {
                    newPullParser.next();
                    listVersionResult.versionIdMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("MaxKeys")) {
                    newPullParser.next();
                    listVersionResult.maxKeys = Integer.parseInt(newPullParser.getText());
                } else if (name.equalsIgnoreCase("Delimiter")) {
                    newPullParser.next();
                    listVersionResult.delimiter = newPullParser.getText();
                } else if (name.equalsIgnoreCase("NextKeyMarker")) {
                    newPullParser.next();
                    listVersionResult.nextKeyMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("IsTruncated")) {
                    newPullParser.next();
                    listVersionResult.isTruncated = Boolean.parseBoolean(newPullParser.getText());
                } else if (name.equalsIgnoreCase("NextVersionIdMarker")) {
                    newPullParser.next();
                    listVersionResult.nextVersionIdMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    if (commonPrefixes == null) {
                        listVersionResult.prefix = newPullParser.getText();
                    } else {
                        commonPrefixes.prefix = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Key")) {
                    newPullParser.next();
                    if (version != null) {
                        version.key = newPullParser.getText();
                    } else if (deleteMarker != null) {
                        deleteMarker.key = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("VersionId")) {
                    newPullParser.next();
                    if (version != null) {
                        version.versionID = newPullParser.getText();
                    } else if (deleteMarker != null) {
                        deleteMarker.versionId = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("IsLatest")) {
                    newPullParser.next();
                    if (version != null) {
                        version.isLatest = Boolean.parseBoolean(newPullParser.getText());
                    } else if (deleteMarker != null) {
                        deleteMarker.isLatest = Boolean.parseBoolean(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("LastModified")) {
                    newPullParser.next();
                    if (version != null) {
                        version.lastModified = newPullParser.getText();
                    } else if (deleteMarker != null) {
                        deleteMarker.lastModified = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("ETag")) {
                    newPullParser.next();
                    if (version != null) {
                        version.etag = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Size")) {
                    newPullParser.next();
                    if (version != null) {
                        version.size = Long.parseLong(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase(CreateBucketRequest.TAB_STORAGECLASS)) {
                    newPullParser.next();
                    if (version != null) {
                        version.storageClass = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Owner")) {
                    owner = new ListVersionResult.Owner();
                } else if (name.equalsIgnoreCase("ID")) {
                    newPullParser.next();
                    if (owner != null) {
                        owner.f93319id = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("DisplayName")) {
                    newPullParser.next();
                    if (owner != null) {
                        owner.displayName = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("DeleteMarker")) {
                    deleteMarker = new ListVersionResult.DeleteMarker();
                } else if (name.equalsIgnoreCase("Version")) {
                    version = new ListVersionResult.Version();
                } else if (name.equalsIgnoreCase("CommonPrefixes")) {
                    commonPrefixes = new ListVersionResult.CommonPrefixes();
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Owner")) {
                    if (owner != null) {
                        if (deleteMarker != null) {
                            deleteMarker.owner = owner;
                        } else if (version != null) {
                            version.owner = owner;
                        }
                        owner = null;
                    }
                } else if (name2.equalsIgnoreCase("DeleteMarker")) {
                    if (deleteMarker != null) {
                        linkedList3.add(deleteMarker);
                        deleteMarker = null;
                    }
                } else if (name2.equalsIgnoreCase("Version")) {
                    if (version != null) {
                        linkedList2.add(version);
                        version = null;
                    }
                } else if (name2.equalsIgnoreCase("CommonPrefixes") && commonPrefixes != null) {
                    linkedList.add(commonPrefixes);
                    commonPrefixes = null;
                }
            }
        }
    }

    public static void parseInventoryConfiguration(InputStream inputStream, InventoryConfiguration inventoryConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        InventoryConfiguration.COSBucketDestination cOSBucketDestination = null;
        InventoryConfiguration.OptionalFields optionalFields = null;
        InventoryConfiguration.Filter filter = null;
        InventoryConfiguration.Schedule schedule = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase(PackageRelationship.ID_ATTRIBUTE_NAME)) {
                    newPullParser.next();
                    inventoryConfiguration.f93311id = newPullParser.getText();
                } else if (name.equalsIgnoreCase("IsEnabled")) {
                    newPullParser.next();
                    inventoryConfiguration.isEnabled = Boolean.parseBoolean(newPullParser.getText());
                } else if (name.equalsIgnoreCase("COSBucketDestination")) {
                    cOSBucketDestination = new InventoryConfiguration.COSBucketDestination();
                } else if (name.equalsIgnoreCase("Format")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.format = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("AccountId")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.accountId = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Bucket")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.bucket = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.prefix = newPullParser.getText();
                    } else if (filter != null) {
                        filter.prefix = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Encryption")) {
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.encryption = new InventoryConfiguration.Encryption();
                    }
                } else if (name.equalsIgnoreCase("SSE-COS")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.encryption.sSECOS = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Schedule")) {
                    schedule = new InventoryConfiguration.Schedule();
                } else if (name.equalsIgnoreCase("Frequency")) {
                    newPullParser.next();
                    if (schedule != null) {
                        schedule.frequency = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Filter")) {
                    filter = new InventoryConfiguration.Filter();
                } else if (name.equalsIgnoreCase("IncludedObjectVersions")) {
                    newPullParser.next();
                    inventoryConfiguration.includedObjectVersions = newPullParser.getText();
                } else if (name.equalsIgnoreCase("OptionalFields")) {
                    optionalFields = new InventoryConfiguration.OptionalFields();
                    optionalFields.fields = new HashSet(6);
                } else if (name.equalsIgnoreCase("Field")) {
                    newPullParser.next();
                    if (optionalFields != null) {
                        optionalFields.fields.add(newPullParser.getText());
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("COSBucketDestination")) {
                    InventoryConfiguration.Destination destination = new InventoryConfiguration.Destination();
                    inventoryConfiguration.destination = destination;
                    destination.cosBucketDestination = cOSBucketDestination;
                    cOSBucketDestination = null;
                } else if (name2.equalsIgnoreCase("OptionalFields")) {
                    inventoryConfiguration.optionalFields = optionalFields;
                    optionalFields = null;
                } else if (name2.equalsIgnoreCase("Filter")) {
                    inventoryConfiguration.filter = filter;
                    filter = null;
                } else if (name2.equalsIgnoreCase("Schedule")) {
                    inventoryConfiguration.schedule = schedule;
                    schedule = null;
                }
            }
        }
    }

    public static void parseLifecycleConfiguration(InputStream inputStream, LifecycleConfiguration lifecycleConfiguration) throws XmlPullParserException, IOException {
        LifecycleConfiguration.AbortIncompleteMultiUpload abortIncompleteMultiUpload;
        LifecycleConfiguration lifecycleConfiguration2 = lifecycleConfiguration;
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        int eventType = newPullParser.getEventType();
        lifecycleConfiguration2.rules = new ArrayList();
        LifecycleConfiguration.Rule rule = null;
        LifecycleConfiguration.Filter filter = null;
        LifecycleConfiguration.Transition transition = null;
        LifecycleConfiguration.NoncurrentVersionExpiration noncurrentVersionExpiration = null;
        LifecycleConfiguration.NoncurrentVersionTransition noncurrentVersionTransition = null;
        LifecycleConfiguration.Expiration expiration = null;
        LifecycleConfiguration.AbortIncompleteMultiUpload abortIncompleteMultiUpload2 = null;
        while (eventType != 1) {
            LifecycleConfiguration.AbortIncompleteMultiUpload abortIncompleteMultiUpload3 = abortIncompleteMultiUpload2;
            if (eventType != 2) {
                if (eventType == 3) {
                    String name = newPullParser.getName();
                    if (name.equalsIgnoreCase("Rule")) {
                        lifecycleConfiguration2.rules.add(rule);
                        abortIncompleteMultiUpload2 = abortIncompleteMultiUpload3;
                        rule = null;
                    } else if (name.equalsIgnoreCase("Filter")) {
                        if (rule != null) {
                            rule.filter = filter;
                        }
                        abortIncompleteMultiUpload2 = abortIncompleteMultiUpload3;
                        filter = null;
                    } else if (name.equalsIgnoreCase("Transition")) {
                        if (rule != null) {
                            rule.transition = transition;
                        }
                        abortIncompleteMultiUpload2 = abortIncompleteMultiUpload3;
                        transition = null;
                    } else if (name.equalsIgnoreCase("NoncurrentVersionExpiration")) {
                        if (rule != null) {
                            rule.noncurrentVersionExpiration = noncurrentVersionExpiration;
                        }
                        abortIncompleteMultiUpload2 = abortIncompleteMultiUpload3;
                        noncurrentVersionExpiration = null;
                    } else if (name.equalsIgnoreCase("NoncurrentVersionTransition")) {
                        if (rule != null) {
                            rule.noncurrentVersionTransition = noncurrentVersionTransition;
                        }
                        abortIncompleteMultiUpload2 = abortIncompleteMultiUpload3;
                        noncurrentVersionTransition = null;
                    } else if (name.equalsIgnoreCase("Expiration")) {
                        if (rule != null) {
                            rule.expiration = expiration;
                        }
                        abortIncompleteMultiUpload2 = abortIncompleteMultiUpload3;
                        expiration = null;
                    } else if (name.equalsIgnoreCase("AbortIncompleteMultipartUpload")) {
                        if (rule != null) {
                            rule.abortIncompleteMultiUpload = abortIncompleteMultiUpload3;
                        }
                        abortIncompleteMultiUpload2 = null;
                    }
                    eventType = newPullParser.next();
                    lifecycleConfiguration2 = lifecycleConfiguration;
                }
                abortIncompleteMultiUpload = abortIncompleteMultiUpload3;
                abortIncompleteMultiUpload2 = abortIncompleteMultiUpload;
                eventType = newPullParser.next();
                lifecycleConfiguration2 = lifecycleConfiguration;
            } else {
                abortIncompleteMultiUpload = abortIncompleteMultiUpload3;
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Rule")) {
                    rule = new LifecycleConfiguration.Rule();
                } else if (name2.equalsIgnoreCase("ID")) {
                    newPullParser.next();
                    if (rule != null) {
                        rule.f93312id = newPullParser.getText();
                    }
                } else if (name2.equalsIgnoreCase("Filter")) {
                    filter = new LifecycleConfiguration.Filter();
                } else if (name2.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    if (filter != null) {
                        filter.prefix = newPullParser.getText();
                    }
                } else if (name2.equalsIgnoreCase(PersistedInstallation.f35952i)) {
                    newPullParser.next();
                    if (rule != null) {
                        rule.status = newPullParser.getText();
                    }
                } else if (name2.equalsIgnoreCase("Transition")) {
                    transition = new LifecycleConfiguration.Transition();
                } else if (name2.equalsIgnoreCase("Expiration")) {
                    expiration = new LifecycleConfiguration.Expiration();
                } else if (name2.equalsIgnoreCase("Days")) {
                    newPullParser.next();
                    if (transition != null) {
                        transition.days = Integer.parseInt(newPullParser.getText());
                    } else if (rule != null && rule.expiration != null && expiration != null) {
                        expiration.days = Integer.parseInt(newPullParser.getText());
                    }
                } else if (name2.equalsIgnoreCase("Date")) {
                    newPullParser.next();
                    if (transition != null) {
                        transition.date = newPullParser.getText();
                    } else if (expiration != null) {
                        expiration.date = newPullParser.getText();
                    }
                } else if (name2.equalsIgnoreCase("ExpiredObjectDeleteMarker")) {
                    newPullParser.next();
                    if (expiration != null) {
                        expiration.expiredObjectDeleteMarker = newPullParser.getText();
                    }
                } else if (name2.equalsIgnoreCase("AbortIncompleteMultipartUpload")) {
                    abortIncompleteMultiUpload2 = new LifecycleConfiguration.AbortIncompleteMultiUpload();
                    eventType = newPullParser.next();
                    lifecycleConfiguration2 = lifecycleConfiguration;
                } else if (name2.equalsIgnoreCase("DaysAfterInitiation")) {
                    newPullParser.next();
                    if (abortIncompleteMultiUpload != null) {
                        abortIncompleteMultiUpload.daysAfterInitiation = Integer.parseInt(newPullParser.getText());
                    }
                } else if (name2.equalsIgnoreCase("NoncurrentVersionExpiration")) {
                    noncurrentVersionExpiration = new LifecycleConfiguration.NoncurrentVersionExpiration();
                } else if (name2.equalsIgnoreCase("NoncurrentVersionTransition")) {
                    noncurrentVersionTransition = new LifecycleConfiguration.NoncurrentVersionTransition();
                } else if (name2.equalsIgnoreCase("NoncurrentDays")) {
                    newPullParser.next();
                    if (noncurrentVersionExpiration != null) {
                        noncurrentVersionExpiration.noncurrentDays = Integer.parseInt(newPullParser.getText());
                    } else if (noncurrentVersionTransition != null) {
                        noncurrentVersionTransition.noncurrentDays = Integer.parseInt(newPullParser.getText());
                    }
                } else if (name2.equalsIgnoreCase(CreateBucketRequest.TAB_STORAGECLASS)) {
                    newPullParser.next();
                    if (transition != null) {
                        transition.storageClass = newPullParser.getText();
                    } else if (noncurrentVersionTransition != null) {
                        noncurrentVersionTransition.storageClass = newPullParser.getText();
                    }
                }
                abortIncompleteMultiUpload2 = abortIncompleteMultiUpload;
                eventType = newPullParser.next();
                lifecycleConfiguration2 = lifecycleConfiguration;
            }
        }
    }

    public static void parseListBucketResult(InputStream inputStream, ListBucket listBucket) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        listBucket.contentsList = new ArrayList();
        listBucket.commonPrefixesList = new ArrayList();
        ListBucket.Contents contents = null;
        ListBucket.CommonPrefixes commonPrefixes = null;
        ListBucket.Owner owner = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("Name")) {
                    newPullParser.next();
                    listBucket.name = newPullParser.getText();
                } else if (name.equalsIgnoreCase("Encoding-Type")) {
                    newPullParser.next();
                    listBucket.encodingType = newPullParser.getText();
                } else if (name.equalsIgnoreCase("Marker")) {
                    newPullParser.next();
                    listBucket.marker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("MaxKeys")) {
                    newPullParser.next();
                    listBucket.maxKeys = Integer.parseInt(newPullParser.getText());
                } else if (name.equalsIgnoreCase("Delimiter")) {
                    newPullParser.next();
                    listBucket.delimiter = newPullParser.getText();
                } else if (name.equalsIgnoreCase("NextMarker")) {
                    newPullParser.next();
                    listBucket.nextMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("IsTruncated")) {
                    newPullParser.next();
                    listBucket.isTruncated = Boolean.parseBoolean(newPullParser.getText());
                } else if (name.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    if (commonPrefixes == null) {
                        listBucket.prefix = newPullParser.getText();
                    } else {
                        commonPrefixes.prefix = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Contents")) {
                    contents = new ListBucket.Contents();
                } else if (name.equalsIgnoreCase("Key")) {
                    newPullParser.next();
                    if (contents != null) {
                        contents.key = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("LastModified")) {
                    newPullParser.next();
                    if (contents != null) {
                        contents.lastModified = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("ETag")) {
                    newPullParser.next();
                    if (contents != null) {
                        contents.eTag = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Size")) {
                    newPullParser.next();
                    if (contents != null) {
                        contents.size = Long.parseLong(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase(CreateBucketRequest.TAB_STORAGECLASS)) {
                    newPullParser.next();
                    if (contents != null) {
                        contents.storageClass = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Owner")) {
                    owner = new ListBucket.Owner();
                } else if (name.equalsIgnoreCase("ID")) {
                    newPullParser.next();
                    if (owner != null) {
                        owner.f93314id = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("CommonPrefixes")) {
                    commonPrefixes = new ListBucket.CommonPrefixes();
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Contents")) {
                    listBucket.contentsList.add(contents);
                    contents = null;
                } else if (name2.equalsIgnoreCase("Owner")) {
                    if (contents != null) {
                        contents.owner = owner;
                    }
                    owner = null;
                } else if (name2.equalsIgnoreCase("CommonPrefixes")) {
                    listBucket.commonPrefixesList.add(commonPrefixes);
                    commonPrefixes = null;
                }
            }
        }
    }

    public static void parseListBucketVersions(InputStream inputStream, ListBucketVersions listBucketVersions) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        listBucketVersions.objectVersionList = new ArrayList();
        ListBucketVersions.ObjectVersion objectVersion = null;
        ListBucketVersions.Owner owner = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("Name")) {
                    newPullParser.next();
                    listBucketVersions.name = newPullParser.getText();
                } else if (name.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    listBucketVersions.prefix = newPullParser.getText();
                } else if (name.equalsIgnoreCase("KeyMarker")) {
                    newPullParser.next();
                    listBucketVersions.keyMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("VersionIdMarker")) {
                    newPullParser.next();
                    listBucketVersions.versionIdMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("MaxKeys")) {
                    newPullParser.next();
                    listBucketVersions.maxKeys = Long.parseLong(newPullParser.getText());
                } else if (name.equalsIgnoreCase("IsTruncated")) {
                    newPullParser.next();
                    listBucketVersions.isTruncated = Boolean.parseBoolean(newPullParser.getText());
                } else if (name.equalsIgnoreCase("NextKeyMarker")) {
                    newPullParser.next();
                    listBucketVersions.nextKeyMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("NextVersionIdMarker")) {
                    newPullParser.next();
                    listBucketVersions.nextVersionIdMarker = newPullParser.getText();
                } else if (name.equalsIgnoreCase("DeleteMarker")) {
                    objectVersion = new ListBucketVersions.DeleteMarker();
                } else if (name.equalsIgnoreCase("Version")) {
                    objectVersion = new ListBucketVersions.Version();
                } else if (name.equalsIgnoreCase("Key")) {
                    newPullParser.next();
                    if (objectVersion != null) {
                        objectVersion.key = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("VersionId")) {
                    newPullParser.next();
                    if (objectVersion != null) {
                        objectVersion.versionId = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("IsLatest")) {
                    newPullParser.next();
                    if (objectVersion != null) {
                        objectVersion.isLatest = Boolean.parseBoolean(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("LastModified")) {
                    newPullParser.next();
                    if (objectVersion != null) {
                        objectVersion.lastModified = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Owner")) {
                    owner = new ListBucketVersions.Owner();
                } else if (name.equalsIgnoreCase(AuthActivity.EXTRA_UID)) {
                    newPullParser.next();
                    if (owner != null) {
                        owner.uid = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("ETag")) {
                    newPullParser.next();
                    if (objectVersion != null && (objectVersion instanceof ListBucketVersions.Version)) {
                        ((ListBucketVersions.Version) objectVersion).eTag = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Size")) {
                    newPullParser.next();
                    if (objectVersion != null && (objectVersion instanceof ListBucketVersions.Version)) {
                        ((ListBucketVersions.Version) objectVersion).size = Long.parseLong(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase(CreateBucketRequest.TAB_STORAGECLASS)) {
                    newPullParser.next();
                    if (objectVersion != null && (objectVersion instanceof ListBucketVersions.Version)) {
                        ((ListBucketVersions.Version) objectVersion).storageClass = newPullParser.getText();
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Owner")) {
                    if (objectVersion != null) {
                        objectVersion.owner = owner;
                    }
                    owner = null;
                } else {
                    if (name2.equalsIgnoreCase("DeleteMarker")) {
                        listBucketVersions.objectVersionList.add(objectVersion);
                    } else if (name2.equalsIgnoreCase("Version")) {
                        listBucketVersions.objectVersionList.add(objectVersion);
                    }
                    objectVersion = null;
                }
            }
        }
    }

    public static void parseListInventoryConfiguration(InputStream inputStream, ListInventoryConfiguration listInventoryConfiguration) throws IOException, XmlPullParserException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        listInventoryConfiguration.inventoryConfigurations = new HashSet(20);
        InventoryConfiguration inventoryConfiguration = null;
        InventoryConfiguration.OptionalFields optionalFields = null;
        InventoryConfiguration.COSBucketDestination cOSBucketDestination = null;
        InventoryConfiguration.Schedule schedule = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("IsTruncated")) {
                    newPullParser.next();
                    listInventoryConfiguration.isTruncated = Boolean.parseBoolean(newPullParser.getText());
                } else if (name.equalsIgnoreCase("ContinuationToken")) {
                    newPullParser.next();
                    listInventoryConfiguration.continuationToken = newPullParser.getText();
                } else if (name.equalsIgnoreCase("NextContinuationToken")) {
                    newPullParser.next();
                    listInventoryConfiguration.nextContinuationToken = newPullParser.getText();
                } else if (name.equalsIgnoreCase("InventoryConfiguration")) {
                    inventoryConfiguration = new InventoryConfiguration();
                } else if (name.equalsIgnoreCase(PackageRelationship.ID_ATTRIBUTE_NAME)) {
                    newPullParser.next();
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.f93311id = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("IsEnabled")) {
                    newPullParser.next();
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.isEnabled = Boolean.parseBoolean(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("COSBucketDestination")) {
                    cOSBucketDestination = new InventoryConfiguration.COSBucketDestination();
                } else if (name.equalsIgnoreCase("Format")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.format = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("AccountId")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.accountId = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Bucket")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.bucket = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.prefix = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Encryption")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.encryption = new InventoryConfiguration.Encryption();
                    }
                } else if (name.equalsIgnoreCase("SSE-COS")) {
                    newPullParser.next();
                    if (cOSBucketDestination != null) {
                        cOSBucketDestination.encryption.sSECOS = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Schedule")) {
                    schedule = new InventoryConfiguration.Schedule();
                } else if (name.equalsIgnoreCase("Frequency")) {
                    newPullParser.next();
                    if (schedule != null) {
                        schedule.frequency = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Filter")) {
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.filter = new InventoryConfiguration.Filter();
                    }
                } else if (name.equalsIgnoreCase("IncludedObjectVersions")) {
                    newPullParser.next();
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.includedObjectVersions = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("OptionalFields")) {
                    optionalFields = new InventoryConfiguration.OptionalFields();
                    optionalFields.fields = new HashSet(6);
                } else if (name.equalsIgnoreCase("Field")) {
                    newPullParser.next();
                    if (optionalFields != null) {
                        optionalFields.fields.add(newPullParser.getText());
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("COSBucketDestination")) {
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.destination = new InventoryConfiguration.Destination();
                    }
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.destination.cosBucketDestination = cOSBucketDestination;
                    }
                    cOSBucketDestination = null;
                } else if (name2.equalsIgnoreCase("OptionalFields")) {
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.optionalFields = optionalFields;
                    }
                    optionalFields = null;
                } else if (name2.equalsIgnoreCase("Filter")) {
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.filter = null;
                    }
                } else if (name2.equalsIgnoreCase("Schedule")) {
                    if (inventoryConfiguration != null) {
                        inventoryConfiguration.schedule = schedule;
                    }
                    schedule = null;
                } else if (name2.equalsIgnoreCase("InventoryConfiguration")) {
                    listInventoryConfiguration.inventoryConfigurations.add(inventoryConfiguration);
                    inventoryConfiguration = null;
                }
            }
        }
    }

    public static void parseLocationConstraint(InputStream inputStream, LocationConstraint locationConstraint) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2 && newPullParser.getName().equalsIgnoreCase(CreateBucketRequest.TAB_LOCATIONCONSTRAINT)) {
                newPullParser.next();
                locationConstraint.location = newPullParser.getText();
            }
        }
    }

    public static void parseReplicationConfiguration(InputStream inputStream, ReplicationConfiguration replicationConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        replicationConfiguration.rules = new ArrayList();
        ReplicationConfiguration.Rule rule = null;
        ReplicationConfiguration.Destination destination = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("Role")) {
                    newPullParser.next();
                    replicationConfiguration.role = newPullParser.getText();
                } else if (name.equalsIgnoreCase("Rule")) {
                    rule = new ReplicationConfiguration.Rule();
                } else if (name.equalsIgnoreCase(PersistedInstallation.f35952i)) {
                    newPullParser.next();
                    if (rule != null) {
                        rule.status = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("ID")) {
                    newPullParser.next();
                    if (rule != null) {
                        rule.f93320id = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Prefix")) {
                    newPullParser.next();
                    if (rule != null) {
                        rule.prefix = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase(HttpHeaders.DESTINATION)) {
                    destination = new ReplicationConfiguration.Destination();
                } else if (name.equalsIgnoreCase("Bucket")) {
                    newPullParser.next();
                    if (destination != null) {
                        destination.bucket = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase(CreateBucketRequest.TAB_STORAGECLASS)) {
                    newPullParser.next();
                    if (destination != null) {
                        destination.storageClass = newPullParser.getText();
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("Rule")) {
                    replicationConfiguration.rules.add(rule);
                    rule = null;
                } else if (name2.equalsIgnoreCase(HttpHeaders.DESTINATION)) {
                    if (rule != null) {
                        rule.destination = destination;
                    }
                    destination = null;
                }
            }
        }
    }

    public static void parseTagging(InputStream inputStream, Tagging tagging) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        Tagging.TagSet tagSet = null;
        Tagging.Tag tag = null;
        String str = null;
        String str2 = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if ("TagSet".equalsIgnoreCase(name)) {
                    tagSet = new Tagging.TagSet();
                } else if ("Tag".equalsIgnoreCase(name)) {
                    tag = new Tagging.Tag();
                } else if ("Key".equalsIgnoreCase(name)) {
                    newPullParser.next();
                    str = newPullParser.getText();
                } else if ("Value".equalsIgnoreCase(name)) {
                    newPullParser.next();
                    str2 = newPullParser.getText();
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if ("TagSet".equalsIgnoreCase(name2)) {
                    tagging.tagSet = tagSet;
                    tagSet = null;
                } else if ("Tag".equalsIgnoreCase(name2)) {
                    if (tagSet != null) {
                        tagSet.addTag(tag);
                    }
                } else if ("Key".equalsIgnoreCase(name2)) {
                    if (tag != null) {
                        tag.key = str;
                    }
                } else if ("Value".equalsIgnoreCase(name2) && tag != null) {
                    tag.value = str2;
                }
            }
        }
    }

    public static void parseVersioningConfiguration(InputStream inputStream, VersioningConfiguration versioningConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2 && newPullParser.getName().equalsIgnoreCase(PersistedInstallation.f35952i)) {
                newPullParser.next();
                versioningConfiguration.status = newPullParser.getText();
            }
        }
    }

    public static void parseWebsiteConfig(InputStream inputStream, WebsiteConfiguration websiteConfiguration) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, "UTF-8");
        websiteConfiguration.routingRules = new ArrayList();
        WebsiteConfiguration.IndexDocument indexDocument = null;
        WebsiteConfiguration.ErrorDocument errorDocument = null;
        WebsiteConfiguration.RedirectAllRequestTo redirectAllRequestTo = null;
        WebsiteConfiguration.RoutingRule routingRule = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("IndexDocument")) {
                    indexDocument = new WebsiteConfiguration.IndexDocument();
                } else if (name.equalsIgnoreCase("Suffix")) {
                    newPullParser.next();
                    if (indexDocument != null) {
                        indexDocument.suffix = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("ErrorDocument")) {
                    errorDocument = new WebsiteConfiguration.ErrorDocument();
                } else if (name.equalsIgnoreCase("Key")) {
                    newPullParser.next();
                    if (errorDocument != null) {
                        errorDocument.key = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("RedirectAllRequestsTo")) {
                    redirectAllRequestTo = new WebsiteConfiguration.RedirectAllRequestTo();
                } else if (name.equalsIgnoreCase("Protocol")) {
                    newPullParser.next();
                    if (redirectAllRequestTo != null) {
                        redirectAllRequestTo.protocol = newPullParser.getText();
                    } else if (routingRule != null) {
                        routingRule.redirect.protocol = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("RoutingRule")) {
                    routingRule = new WebsiteConfiguration.RoutingRule();
                } else if (name.equalsIgnoreCase("Condition")) {
                    if (routingRule != null) {
                        routingRule.contidion = new WebsiteConfiguration.Contidion();
                    }
                } else if (name.equalsIgnoreCase("HttpErrorCodeReturnedEquals")) {
                    newPullParser.next();
                    if (routingRule != null) {
                        routingRule.contidion.httpErrorCodeReturnedEquals = Integer.parseInt(newPullParser.getText());
                    }
                } else if (name.equalsIgnoreCase("KeyPrefixEquals")) {
                    newPullParser.next();
                    if (routingRule != null) {
                        routingRule.contidion.keyPrefixEquals = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("Redirect")) {
                    if (routingRule != null) {
                        routingRule.redirect = new WebsiteConfiguration.Redirect();
                    }
                } else if (name.equalsIgnoreCase("ReplaceKeyPrefixWith")) {
                    newPullParser.next();
                    if (routingRule != null) {
                        routingRule.redirect.replaceKeyPrefixWith = newPullParser.getText();
                    }
                } else if (name.equalsIgnoreCase("ReplaceKeyWith")) {
                    newPullParser.next();
                    if (routingRule != null) {
                        routingRule.redirect.replaceKeyWith = newPullParser.getText();
                    }
                }
            } else if (eventType == 3) {
                String name2 = newPullParser.getName();
                if (name2.equalsIgnoreCase("IndexDocument")) {
                    websiteConfiguration.indexDocument = indexDocument;
                    indexDocument = null;
                } else if (name2.equalsIgnoreCase("ErrorDocument")) {
                    websiteConfiguration.errorDocument = errorDocument;
                    errorDocument = null;
                } else if (name2.equalsIgnoreCase("RedirectAllRequestsTo")) {
                    websiteConfiguration.redirectAllRequestTo = redirectAllRequestTo;
                    redirectAllRequestTo = null;
                } else if (name2.equalsIgnoreCase("RoutingRule")) {
                    websiteConfiguration.routingRules.add(routingRule);
                    routingRule = null;
                }
            }
        }
    }
}
