package com.onyx.android.sdk.cloudstorage.constans;

import com.dropbox.core.android.AuthActivity;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.Scope;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b(\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b^\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0007R\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0007R\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0007R\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0007R\u0014\u0010\u0013\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0007R\u0014\u0010\u0014\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0007R\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0007R\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0007R\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0007R\u0014\u0010\u0018\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0007R\u0014\u0010\u0019\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0007R\u0014\u0010\u001a\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0007R\u0014\u0010\u001b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0007R\u0014\u0010\u001c\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0007R\u0014\u0010\u001d\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0007R\u0014\u0010\u001e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0007R\u0014\u0010\u001f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0007R\u0014\u0010 \u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0007R\u0014\u0010!\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0007R\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0007R\u0014\u0010#\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0007R\u0014\u0010$\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0007R\u0014\u0010%\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0007R\u0014\u0010&\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u0007R\u0014\u0010'\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0007R\u0014\u0010(\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0007R\u0014\u0010)\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0007R\u0014\u0010*\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\u0007R\u0014\u0010+\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\u0007R\u0014\u0010,\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010\u0007R\u0014\u0010.\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00100\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010\u0007R\u0014\u00102\u001a\u0002018\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00105\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010\u0007R\u0014\u00106\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u0010\u0007R\u0014\u00107\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010\u0007R\u0014\u00108\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u0010\u0007R\u0014\u00109\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010\u0007R\u0014\u0010:\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u0010\u0007R\u0017\u0010>\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b;\u0010\u0007\u001a\u0004\b<\u0010=R\u001a\u0010A\u001a\u00020\u00048\u0006X\u0086D¢\u0006\f\n\u0004\b?\u0010\u0007\u001a\u0004\b@\u0010=R\u0014\u0010B\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010\u0007R\u0014\u0010C\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bC\u0010\u0007R\u0014\u0010D\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bD\u0010\u0007R\u0014\u0010E\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bE\u0010\u0007R\u0014\u0010F\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bF\u0010\u0007R\u0014\u0010G\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bG\u0010\u0007R\u0014\u0010H\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bH\u0010\u0007R\u0014\u0010I\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bI\u0010\u0007R\u0014\u0010J\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bJ\u0010\u0007R\u0014\u0010K\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bK\u0010\u0007R\u0014\u0010L\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bL\u0010\u0007R\u0014\u0010M\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bM\u0010\u0007R\u0014\u0010N\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bN\u0010\u0007R\u0014\u0010O\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bO\u0010\u0007R\u0014\u0010P\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bP\u0010\u0007R\u0014\u0010Q\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bQ\u0010\u0007R\u0014\u0010R\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bR\u0010\u0007R\u0014\u0010S\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bS\u0010\u0007R\u0014\u0010T\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bT\u0010\u0007R\u0014\u0010U\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bU\u0010\u0007R\u0014\u0010V\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bV\u0010\u0007R\u0014\u0010W\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bW\u0010\u0007R\u0014\u0010X\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bX\u0010\u0007R\u0014\u0010Y\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bY\u0010\u0007R\u0014\u0010Z\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bZ\u0010\u0007R\u0014\u0010[\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b[\u0010\u0007R\u0014\u0010\\\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\\\u0010\u0007R\u0014\u0010]\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b]\u0010\u0007R\u0014\u0010^\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b^\u0010\u0007R\u0014\u0010_\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b_\u0010\u0007R\u0014\u0010`\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b`\u0010\u0007R\u0014\u0010a\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\ba\u0010\u0007R\u0014\u0010b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bb\u0010\u0007R\u0014\u0010c\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bc\u0010\u0007R\u0014\u0010d\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bd\u0010\u0007R\u0014\u0010e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\be\u0010\u0007R\u0014\u0010f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bf\u0010\u0007R\u0014\u0010g\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bg\u0010\u0007R\u0014\u0010h\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bh\u0010\u0007R\u0014\u0010i\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bi\u0010\u0007R\u0014\u0010j\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bj\u0010\u0007R\u0014\u0010k\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bk\u0010\u0007R\u0014\u0010l\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bl\u0010\u0007R\u0014\u0010m\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bm\u0010\u0007R\u0014\u0010n\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bn\u0010\u0007R\u0014\u0010o\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bo\u0010\u0007R\u0014\u0010p\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bp\u0010\u0007R\u0014\u0010q\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bq\u0010\u0007R\u0014\u0010r\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\br\u0010\u0007R\u0014\u0010s\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bs\u0010\u0007R\u0014\u0010t\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bt\u0010\u0007R\u0014\u0010u\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bu\u0010\u0007R\u0014\u0010v\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bv\u0010\u0007R\u0014\u0010w\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bw\u0010\u0007R\u0014\u0010x\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bx\u0010\u0007R\u0014\u0010y\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\by\u0010\u0007R\u0014\u0010z\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bz\u0010\u0007R\u0014\u0010{\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b{\u0010\u0007R\u0014\u0010|\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b|\u0010\u0007R\u0014\u0010}\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b}\u0010\u0007R\u0014\u0010~\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b~\u0010\u0007R\u0014\u0010\u007f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u007f\u0010\u0007R\u0016\u0010\u0080\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010\u0007R\u0016\u0010\u0081\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010\u0007R\u0016\u0010\u0082\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010\u0007R\u0016\u0010\u0083\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010\u0007R\u0016\u0010\u0084\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010\u0007R\u0016\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010\u0007R\u0016\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010\u0007R\u0016\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010\u0007R\u0016\u0010\u0088\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010\u0007R\u0016\u0010\u0089\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010\u0007R\u0016\u0010\u008a\u0001\u001a\u0002018\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008a\u0001\u00103R\u0016\u0010\u008b\u0001\u001a\u00020-8\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010/R\u0016\u0010\u008c\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010\u0007¨\u0006\u008f\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;", "", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "", "getCloudOnyxPath", "CLOUD_STORAGE_TAG", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "HEADER_AUTHORIZATION", AuthActivity.EXTRA_REFRESH_TOKEN, "ACCEPT", "KEY_INTENT_CONSUMER_KEY", "PDF_FILE_MINE", "RESPONSE_TYPE_CODE", "RESPONSE_TYPE_STATE", "WEB_DISPLAY", "AUTHORIZATION_GRANT_TYPE", "FORAM_DATA", "PDF_FILE_SUFFIX", "PNG_FILE_SUFFIX", "MEDIA_TYPE_JSON", "MEDIA_TYPE_TEXT_HTML", "MEDIA_TYPE_IMAGE", "FILE_TEMP_NAME_SUFFIX", "CLOUD_NOTE_CACHE_DIR_NAME", "BEARER", "PC_BROWSER_UA", "ONYX_NOTE_REQUEST_API", "YNOTE_TITLE_SUFFIX", "YNOTE_REQUEST_API", "YNOTE_BASE_URL", "YNOTE_REDIRECT_URI", "YNOTE_AUTH_URI", "YNOTE_PREFIX", "YNOTE_SUFFIX", "YNOTE_RESOURCE_CONTENT", "YNOTE_REGISTER_URL_PREFIX", "YNOTE_AUTH_STATE_KEY", "ONE_NOTE_LOGIN_URL", "ONE_NOTE_BASE_URL", "ONE_NOTE_RESOURCE", "ONE_NOTE_VERSION_V1_0", "ONE_NOTE_REDIRECT_URI", "ONE_NOTE_CONTENT", "ONE_NOTE_BODY", "", "ONE_NOTE_TOKEN_REFRESH_RESERVE_TIME", "J", "ONE_NOTE_ACTION_REPLACE", "", "ONE_NOTE_IMAGE_SHOW_WIDTH", "I", "a", "ONE_DRIVE_SCOPE_URL", "MICROSOFT_ONLINE_LOGIN_URL", "ONE_DRIVE_BASE_URL", "ONE_DRIVE_BASE_API", "ONE_DRIVE_LOGIN_URL", "ONE_DRIVE_AUTH_SUCCESS_CALLBACK_URL", "b", "getMICROSOFT_ONLINE_AUTH_URL", "()Ljava/lang/String;", "MICROSOFT_ONLINE_AUTH_URL", "c", "getMICROSOFT_OFFLINE_AUTH_URL", "MICROSOFT_OFFLINE_AUTH_URL", "ONE_DRIVE_AUTH_CODE_KEY", "BAIDU_YUN_PAN_URL", "BAIDU_YUN_PCS_URL", "BAIDU_YUN_PCS_URL_SLICE_UPLOAD_SUFFIX", "BAIDU_YUN_AUTH_SUCCESS_CALLBACK_URL", "BAIDU_YUN_AUTH_URL", "BAIDU_YUN_AUTH_CODE_URL", "BAIDU_YUN_AUTH_CODE_KEY", "BAIDU_YUN_ONYX_PATH", "ALIYUN_DRIVE_BASE_URL", "ALIYUN_DRIVE_BASE_API", "ALIYUN_DRIVE_OAUTH_BASE_URL", "ALIYUN_DRIVE_REDIRECT_URL", "ALIYUN_DRIVE_AUTH_URL", "ALIYUN_DRIVE_AUTH_CODE_KEY", "DROPBOX_ONYX_PATH", "GOOGLE_DRIVER_ONYX_PATH", "GOOGLE_DRIVER_AUTH_URL", "GOOGLE_DRIVER_AUTH_SCOPE", "GOOGLE_DRIVER_AUTH_CODE_URL", "GOOGLE_DRIVER_AUTH_CODE_KEY", "GOOGLE_DRIVER_ROOT_ID", "ONE_DRIVER_ONYX_PATH", "ONE_DRIVER_ROOT_PATH_PREFIX", "ONYX_DRIVE_ONYX_PATH", "NUT_STORE_DAV_URL", "NUT_STORE_NSDAV_URL", "NUT_STORE_REF", "WEBDAV_ONYX_PATH", "DAV_PREFIX", "ONYX_WEBDAV_CLOUD_TEST_DAV_URL", "HUAWEIYUN_DRIVE_SCOPE_URL", "HUAWEIYUN_DRIVE_REDIRECT_URL", "HUAWEIYUN_DRIVE_AUTH_URL", "HUAWEIYUN_DRIVE_OAUTH_BASE_URL", "HUAWEIYUN_DRIVE_BASE_URL", "HUAWEIYUN_DRIVE_UPLOAD_URL", "HUAWEIYUN_DRIVE_AUTH_CODE_KEY", "HUAWEIYUN_ONYX_PATH", "KEY_YNOTE_ACCESS_TOKEN", "KEY_DROP_BOX_ACCESS_TOKEN", "KEY_ONE_NOTE_ACCESS_TOKEN", "KEY_ONE_NOTE_REFRESH_ACCESS_TOKEN", "KEY_ONE_NOTE_ACCESS_TOKEN_EXPIRE_TIME", "KEY_DROP_BOX_ACCOUNT_INFO_KEY", "KEY_YNOTE_ACCOUNT_INFO_KEY", "KEY_EVER_NOTE_ACCOUNT_INFO_KEY", "KEY_GOOGLE_DRIVER_ACCOUNT_INFO_KEY", "KEY_ONE_DRIVER_ACCOUNT_INFO_KEY", "FILE_TAG", "TITLE_TAG", "NOTEBOOK_TAG", "CONTENT_TAG", "PATH_TAG", "MAC_TAG", "SOURCE_TAG", "NAME_TAG", CloudStorageConstants.THIRD_AUTH_INTENT_KEY, "KSYNC_PACKAGE_NAME", "THIRD_AUTH_ACTIVITY_CLASS_PATH", "SHARE_USER", "OPERATION_AND", "OPERATION_MATCH", "OPERATION_EQUAL", "OPERATION_NOT_EQUAL", "OPERATION_LESS", "OPERATION_LESS_EQUAL", "OPERATION_GREATER", "OPERATION_GREATER_EQUAL", "OPERATION_CONTAINS", "OPERATION_IN", "SINGLE_QUOTES", "DOWNLOAD_AUTO_RETRY_TIMES", "EXPIRATION_TIME", "URL_CHARSET", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudStorageConstants {

    @NotNull
    public static final String ACCEPT = "Accept";

    @NotNull
    public static final String ALIYUN_DRIVE_AUTH_CODE_KEY = "code=";

    @NotNull
    public static final String ALIYUN_DRIVE_AUTH_URL = "https://openapi.aliyundrive.com/oauth/authorize?client_id=%s&redirect_uri=https://testcallback.aliyundrive.com&scope=user:base,file:all:read,file:all:write&response_type=code&relogin=true";

    @NotNull
    public static final String ALIYUN_DRIVE_BASE_API = "https://openapi.aliyundrive.com/adrive/v1.0/";

    @NotNull
    public static final String ALIYUN_DRIVE_BASE_URL = "https://openapi.aliyundrive.com/";

    @NotNull
    public static final String ALIYUN_DRIVE_OAUTH_BASE_URL = "https://openapi.aliyundrive.com/oauth/";

    @NotNull
    public static final String ALIYUN_DRIVE_REDIRECT_URL = "https://testcallback.aliyundrive.com";

    @NotNull
    public static final String AUTHORIZATION_GRANT_TYPE = "authorization_code";

    @NotNull
    public static final String BAIDU_YUN_AUTH_CODE_KEY = "code=";

    @NotNull
    public static final String BAIDU_YUN_AUTH_CODE_URL = "https://openapi.baidu.com/oauth/2.0/authorize?response_type=code&client_id=%s&redirect_uri=https://openapi.baidu.com/oauth/2.0/login_success&scope=basic,netdisk&display=mobile&qrcode=1&qrcodeW=%d&qrcodeH=%d";

    @NotNull
    public static final String BAIDU_YUN_AUTH_SUCCESS_CALLBACK_URL = "https://openapi.baidu.com/oauth/2.0/login_success";

    @NotNull
    public static final String BAIDU_YUN_AUTH_URL = "https://openapi.baidu.com/oauth/2.0/";

    @NotNull
    public static final String BAIDU_YUN_ONYX_PATH = "/";

    @NotNull
    public static final String BAIDU_YUN_PAN_URL = "https://pan.baidu.com";

    @NotNull
    public static final String BAIDU_YUN_PCS_URL = "https://d.pcs.baidu.com";

    @NotNull
    public static final String BAIDU_YUN_PCS_URL_SLICE_UPLOAD_SUFFIX = "/rest/2.0/pcs/superfile2";

    @NotNull
    public static final String BEARER = "Bearer";

    @NotNull
    public static final String CLOUD_NOTE_CACHE_DIR_NAME = "cloud_note";

    @NotNull
    public static final String CLOUD_STORAGE_TAG = "CloudStorage ";

    @NotNull
    public static final String CONTENT_TAG = "content";

    @NotNull
    public static final String DAV_PREFIX = "/dav/";
    public static final int DOWNLOAD_AUTO_RETRY_TIMES = 3;

    @NotNull
    public static final String DROPBOX_ONYX_PATH = "";
    public static final long EXPIRATION_TIME = 600000;

    @NotNull
    public static final String FILE_TAG = "file";

    @NotNull
    public static final String FILE_TEMP_NAME_SUFFIX = ".1";

    @NotNull
    public static final String FORAM_DATA = "form-data";

    @NotNull
    public static final String GOOGLE_DRIVER_AUTH_CODE_KEY = "code=";

    @NotNull
    public static final String GOOGLE_DRIVER_AUTH_CODE_URL = "https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/drive.file&access_type=offline&prompt=consent&include_granted_scopes=true&response_type=code&state=state_parameter_passthrough_value&client_id=%s&redirect_uri=%s";

    @NotNull
    public static final String GOOGLE_DRIVER_AUTH_SCOPE = "https://www.googleapis.com/auth/drive.file";

    @NotNull
    public static final String GOOGLE_DRIVER_AUTH_URL = "https://oauth2.googleapis.com/";

    @NotNull
    public static final String GOOGLE_DRIVER_ONYX_PATH = "";

    @NotNull
    public static final String GOOGLE_DRIVER_ROOT_ID = "root";

    @NotNull
    public static final String HEADER_AUTHORIZATION = "Authorization";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_AUTH_CODE_KEY = "code=";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_AUTH_URL = "https://oauth-login.cloud.huawei.com/oauth2/v3/authorize?response_type=code&access_type=offline&state=state_parameter_passthrough_value&client_id=%s&redirect_uri=https://testcallback.huaweiyundrive.com&scope=openid https://www.huawei.com/auth/drive";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_BASE_URL = "https://driveapis.cloud.huawei.com.cn/drive/v1/";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_OAUTH_BASE_URL = "https://oauth-login.cloud.huawei.com/oauth2/v3/";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_REDIRECT_URL = "https://testcallback.huaweiyundrive.com";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_SCOPE_URL = "https://www.huawei.com/auth/drive";

    @NotNull
    public static final String HUAWEIYUN_DRIVE_UPLOAD_URL = "https://driveapis.cloud.huawei.com.cn/upload/drive/v1/files?uploadType=resume";

    @NotNull
    public static final String HUAWEIYUN_ONYX_PATH = "/";

    @NotNull
    public static final CloudStorageConstants INSTANCE = new CloudStorageConstants();

    @NotNull
    public static final String KEY_DROP_BOX_ACCESS_TOKEN = "key_drop_box_key_access_token";

    @NotNull
    public static final String KEY_DROP_BOX_ACCOUNT_INFO_KEY = "key_drop_box_account_info";

    @NotNull
    public static final String KEY_EVER_NOTE_ACCOUNT_INFO_KEY = "key_one_note_account_info";

    @NotNull
    public static final String KEY_GOOGLE_DRIVER_ACCOUNT_INFO_KEY = "key_google_driver_account_info";

    @NotNull
    public static final String KEY_INTENT_CONSUMER_KEY = "consumer_key";

    @NotNull
    public static final String KEY_ONE_DRIVER_ACCOUNT_INFO_KEY = "key_one_driver_account_info";

    @NotNull
    public static final String KEY_ONE_NOTE_ACCESS_TOKEN = "key_one_note_key_access_token";

    @NotNull
    public static final String KEY_ONE_NOTE_ACCESS_TOKEN_EXPIRE_TIME = "key_note_key_access_token_expire_time";

    @NotNull
    public static final String KEY_ONE_NOTE_REFRESH_ACCESS_TOKEN = "keynote_key_refresh_access_token";

    @NotNull
    public static final String KEY_YNOTE_ACCESS_TOKEN = "key_ynote_key_access_token";

    @NotNull
    public static final String KEY_YNOTE_ACCOUNT_INFO_KEY = "key_ynote_account_info";

    @NotNull
    public static final String KSYNC_PACKAGE_NAME = "com.onyx.android.ksync";

    @NotNull
    public static final String MAC_TAG = "mac";

    @NotNull
    public static final String MEDIA_TYPE_IMAGE = "image/*";

    @NotNull
    public static final String MEDIA_TYPE_JSON = "application/json";

    @NotNull
    public static final String MEDIA_TYPE_TEXT_HTML = "text/html";

    @NotNull
    public static final String MICROSOFT_ONLINE_LOGIN_URL = "https://login.microsoftonline.com/";

    @NotNull
    public static final String NAME_TAG = "name";

    @NotNull
    public static final String NOTEBOOK_TAG = "notebook";

    @NotNull
    public static final String NUT_STORE_DAV_URL = "https://dav.jianguoyun.com/dav";

    @NotNull
    public static final String NUT_STORE_NSDAV_URL = "https://dav.jianguoyun.com/nsdav";

    @NotNull
    public static final String NUT_STORE_REF = "http://ns.jianguoyun.com";

    @NotNull
    public static final String ONE_DRIVER_ONYX_PATH = "/";

    @NotNull
    public static final String ONE_DRIVER_ROOT_PATH_PREFIX = "/drive/root:";

    @NotNull
    public static final String ONE_DRIVE_AUTH_CODE_KEY = "code=";

    @NotNull
    public static final String ONE_DRIVE_AUTH_SUCCESS_CALLBACK_URL = "https://login.microsoftonline.com/common/oauth2/nativeclient";

    @NotNull
    public static final String ONE_DRIVE_BASE_API = "https://graph.microsoft.com/v1.0/";

    @NotNull
    public static final String ONE_DRIVE_BASE_URL = "https://graph.microsoft.com/";

    @NotNull
    public static final String ONE_DRIVE_LOGIN_URL = "https://login.microsoftonline.com/";

    @NotNull
    public static final String ONE_NOTE_ACTION_REPLACE = "replace";

    @NotNull
    public static final String ONE_NOTE_BASE_URL = "https://www.onenote.com/";

    @NotNull
    public static final String ONE_NOTE_BODY = "<img width=%d height=%d data-render-src=\"name:file\"\n/><object data-attachment=\"%s\" data=\"name:file\" type=\"application/pdf\" />";

    @NotNull
    public static final String ONE_NOTE_CONTENT = "<!DOCTYPE html>\n<html>\n  <head>\n    <title>%s</title>\n  </head>\n  <body>\n    %s\n  </body>\n</html>\n";
    public static final int ONE_NOTE_IMAGE_SHOW_WIDTH = 800;

    @NotNull
    public static final String ONE_NOTE_LOGIN_URL = "https://login.live.com/";

    @NotNull
    public static final String ONE_NOTE_REDIRECT_URI = "http://www.onyx-international.com/";

    @NotNull
    public static final String ONE_NOTE_RESOURCE = "https://onenote.com/";
    public static final long ONE_NOTE_TOKEN_REFRESH_RESERVE_TIME = 600000;

    @NotNull
    public static final String ONE_NOTE_VERSION_V1_0 = "v1.0";

    @NotNull
    public static final String ONYX_DRIVE_ONYX_PATH = "";

    @NotNull
    public static final String ONYX_NOTE_REQUEST_API = "/api/1/";

    @NotNull
    public static final String ONYX_WEBDAV_CLOUD_TEST_DAV_URL = "http://cloud.o-in.me:9888/remote.php/dav/files/webdav";

    @NotNull
    public static final String OPERATION_AND = " and ";

    @NotNull
    public static final String OPERATION_CONTAINS = " contains ";

    @NotNull
    public static final String OPERATION_EQUAL = " = ";

    @NotNull
    public static final String OPERATION_GREATER = " > ";

    @NotNull
    public static final String OPERATION_GREATER_EQUAL = " >= ";

    @NotNull
    public static final String OPERATION_IN = " in ";

    @NotNull
    public static final String OPERATION_LESS = " < ";

    @NotNull
    public static final String OPERATION_LESS_EQUAL = " <= ";

    @NotNull
    public static final String OPERATION_MATCH = " match ";

    @NotNull
    public static final String OPERATION_NOT_EQUAL = " != ";

    @NotNull
    public static final String PATH_TAG = "path";

    @NotNull
    public static final String PC_BROWSER_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36";

    @NotNull
    public static final String PDF_FILE_MINE = "application/pdf";

    @NotNull
    public static final String PDF_FILE_SUFFIX = ".pdf";

    @NotNull
    public static final String PNG_FILE_SUFFIX = ".png";

    @NotNull
    public static final String REFRESH_TOKEN = "refresh_token";

    @NotNull
    public static final String RESPONSE_TYPE_CODE = "code";

    @NotNull
    public static final String RESPONSE_TYPE_STATE = "state";

    @NotNull
    public static final String SHARE_USER = "share_user";

    @NotNull
    public static final String SINGLE_QUOTES = "'";

    @NotNull
    public static final String SOURCE_TAG = "source";

    @NotNull
    public static final String THIRD_AUTH_ACTIVITY_CLASS_PATH = "com.onyx.android.ksync.third.ThirdPartyAuthActivity";

    @NotNull
    public static final String THIRD_AUTH_INTENT_KEY = "THIRD_AUTH_INTENT_KEY";

    @NotNull
    public static final String TITLE_TAG = "title";

    @NotNull
    public static final String URL_CHARSET = "UTF-8";

    @NotNull
    public static final String WEBDAV_ONYX_PATH = "";

    @NotNull
    public static final String WEB_DISPLAY = "web";

    @NotNull
    public static final String YNOTE_AUTH_STATE_KEY = "authState";

    @NotNull
    public static final String YNOTE_AUTH_URI = "https://note.youdao.com/oauth/authorize2";

    @NotNull
    public static final String YNOTE_BASE_URL = "https://note.youdao.com/";

    @NotNull
    public static final String YNOTE_PREFIX = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><note xmlns=\"https://note.youdao.com\">";

    @NotNull
    public static final String YNOTE_REDIRECT_URI = "http://www.onyx-international.com/";

    @NotNull
    public static final String YNOTE_REGISTER_URL_PREFIX = "https://zc.reg.163.com/regInitialized";

    @NotNull
    public static final String YNOTE_REQUEST_API = "/yws/open/";

    @NotNull
    public static final String YNOTE_RESOURCE_CONTENT = "<img src=\"%s\"> ";

    @NotNull
    public static final String YNOTE_SUFFIX = "</note>";

    @NotNull
    public static final String YNOTE_TITLE_SUFFIX = ".note";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String ONE_DRIVE_SCOPE_URL;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String MICROSOFT_ONLINE_AUTH_URL;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String MICROSOFT_OFFLINE_AUTH_URL;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Provider.values().length];
            try {
                iArr[Provider.BAIDU_YUN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Provider.DROP_BOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Provider.ONE_DRIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Provider.NUT_STORE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Provider.WEBDAV.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        String str = Scope.EnumC7324WL.OFFLINE_ACCESS.name() + ' ' + Scope.FILES.READWRITE.getScope() + ' ' + Scope.USER.READ.getScope();
        ONE_DRIVE_SCOPE_URL = str;
        MICROSOFT_ONLINE_AUTH_URL = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id=%s&scope=" + str + "&response_type=code&redirect_uri=https://login.microsoftonline.com/common/oauth2/nativeclient&response_mode=query&state=12345";
        MICROSOFT_OFFLINE_AUTH_URL = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id=%s&scope=%s&response_type=code&redirect_uri=https://login.microsoftonline.com/common/oauth2/nativeclient&response_mode=query&state=12345";
    }

    @NotNull
    public final String getCloudOnyxPath(@Nullable Provider provider) {
        int i = provider == null ? -1 : WhenMappings.$EnumSwitchMapping$0[provider.ordinal()];
        return (i == 1 || i == 3) ? "/" : "";
    }

    @NotNull
    public final String getMICROSOFT_OFFLINE_AUTH_URL() {
        return MICROSOFT_OFFLINE_AUTH_URL;
    }

    @NotNull
    public final String getMICROSOFT_ONLINE_AUTH_URL() {
        return MICROSOFT_ONLINE_AUTH_URL;
    }
}
