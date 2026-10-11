package com.onyx.android.sdk.cloudstorage.provider.webdav.bean;

import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.model.Allprop;
import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001:\b\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006R&\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;", "Ljava/io/Serializable;", "searchHref", "", SearchIntents.EXTRA_QUERY, "(Ljava/lang/String;Ljava/lang/String;)V", "()V", "basicsearch", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;", "getBasicsearch$annotations", "getBasicsearch", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;", "setBasicsearch", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;)V", "BaseSearch", "From", "Like", "OrderBy", "Scope", "Select", "SelectProp", "Where", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@NamespaceList({@Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI), @Namespace(prefix = "oc", reference = "http://owncloud.org/ns")})
@Root(name = "d:searchrequest")
/* loaded from: classes7.dex */
public final class WebDavCloudSearchBody implements Serializable {

    @Nullable
    private BaseSearch basicsearch;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R&\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R&\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;", "Ljava/io/Serializable;", "()V", "from", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;", "getFrom$annotations", "getFrom", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;", "setFrom", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;)V", OneDriverConstants.ORDERBY, "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;", "getOrderby$annotations", "getOrderby", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;", "setOrderby", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;)V", "select", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;", "getSelect$annotations", "getSelect", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;", "setSelect", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;)V", "where", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;", "getWhere$annotations", "getWhere", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;", "setWhere", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Order(elements = {"select", "from", "where", OneDriverConstants.ORDERBY})
    /* loaded from: classes7.dex */
    public static final class BaseSearch implements Serializable {

        @Nullable
        private From from;

        @Nullable
        private OrderBy orderby;

        @Nullable
        private Select select;

        @Nullable
        private Where where;

        @Element
        public static /* synthetic */ void getFrom$annotations() {
        }

        @Element
        public static /* synthetic */ void getOrderby$annotations() {
        }

        @Element
        public static /* synthetic */ void getSelect$annotations() {
        }

        @Element
        public static /* synthetic */ void getWhere$annotations() {
        }

        @Nullable
        public final From getFrom() {
            return this.from;
        }

        @Nullable
        public final OrderBy getOrderby() {
            return this.orderby;
        }

        @Nullable
        public final Select getSelect() {
            return this.select;
        }

        @Nullable
        public final Where getWhere() {
            return this.where;
        }

        public final void setFrom(@Nullable From from) {
            this.from = from;
        }

        public final void setOrderby(@Nullable OrderBy orderBy) {
            this.orderby = orderBy;
        }

        public final void setSelect(@Nullable Select select) {
            this.select = select;
        }

        public final void setWhere(@Nullable Where where) {
            this.where = where;
        }
    }

    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;", "Ljava/io/Serializable;", "()V", "scope", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;", "getScope$annotations", "getScope", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;", "setScope", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class From implements Serializable {

        @Nullable
        private Scope scope;

        @Element
        public static /* synthetic */ void getScope$annotations() {
        }

        @Nullable
        public final Scope getScope() {
            return this.scope;
        }

        public final void setScope(@Nullable Scope scope) {
            this.scope = scope;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;", "Ljava/io/Serializable;", "()V", "literal", "", "getLiteral$annotations", "getLiteral", "()Ljava/lang/String;", "setLiteral", "(Ljava/lang/String;)V", "prop", "Lcom/thegrizzlylabs/sardineandroid/model/Prop;", "getProp$annotations", "getProp", "()Lcom/thegrizzlylabs/sardineandroid/model/Prop;", "setProp", "(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Order(elements = {"prop", "literal"})
    /* loaded from: classes7.dex */
    public static final class Like implements Serializable {

        @Nullable
        private String literal;

        @Nullable
        private Prop prop;

        @Element
        @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
        public static /* synthetic */ void getLiteral$annotations() {
        }

        @Element
        @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
        public static /* synthetic */ void getProp$annotations() {
        }

        @Nullable
        public final String getLiteral() {
            return this.literal;
        }

        @Nullable
        public final Prop getProp() {
            return this.prop;
        }

        public final void setLiteral(@Nullable String str) {
            this.literal = str;
        }

        public final void setProp(@Nullable Prop prop) {
            this.prop = prop;
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;", "Ljava/io/Serializable;", "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Root(name = OneDriverConstants.ORDERBY)
    /* loaded from: classes7.dex */
    public static final class OrderBy implements Serializable {
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;", "Ljava/io/Serializable;", "()V", "depth", "", "getDepth$annotations", "getDepth", "()Ljava/lang/String;", "setDepth", "(Ljava/lang/String;)V", "href", "getHref$annotations", "getHref", "setHref", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Order(elements = {"href", "depth"})
    /* loaded from: classes7.dex */
    public static final class Scope implements Serializable {

        @Nullable
        private String depth;

        @Nullable
        private String href;

        @Element
        @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
        public static /* synthetic */ void getDepth$annotations() {
        }

        @Element
        @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
        public static /* synthetic */ void getHref$annotations() {
        }

        @Nullable
        public final String getDepth() {
            return this.depth;
        }

        @Nullable
        public final String getHref() {
            return this.href;
        }

        public final void setDepth(@Nullable String str) {
            this.depth = str;
        }

        public final void setHref(@Nullable String str) {
            this.href = str;
        }
    }

    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;", "Ljava/io/Serializable;", "()V", "prop", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;", "getProp$annotations", "getProp", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;", "setProp", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Select implements Serializable {

        @Nullable
        private SelectProp prop;

        @Element
        public static /* synthetic */ void getProp$annotations() {
        }

        @Nullable
        public final SelectProp getProp() {
            return this.prop;
        }

        public final void setProp(@Nullable SelectProp selectProp) {
            this.prop = selectProp;
        }
    }

    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;", "Ljava/io/Serializable;", "()V", "allprop", "Lcom/thegrizzlylabs/sardineandroid/model/Allprop;", "getAllprop$annotations", "getAllprop", "()Lcom/thegrizzlylabs/sardineandroid/model/Allprop;", "setAllprop", "(Lcom/thegrizzlylabs/sardineandroid/model/Allprop;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class SelectProp implements Serializable {

        @Nullable
        private Allprop allprop;

        @Element
        @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
        public static /* synthetic */ void getAllprop$annotations() {
        }

        @Nullable
        public final Allprop getAllprop() {
            return this.allprop;
        }

        public final void setAllprop(@Nullable Allprop allprop) {
            this.allprop = allprop;
        }
    }

    @Namespace(prefix = "d", reference = SardineUtil.DEFAULT_NAMESPACE_URI)
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;", "Ljava/io/Serializable;", "()V", "like", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;", "getLike$annotations", "getLike", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;", "setLike", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Where implements Serializable {

        @Nullable
        private Like like;

        @Element
        public static /* synthetic */ void getLike$annotations() {
        }

        @Nullable
        public final Like getLike() {
            return this.like;
        }

        public final void setLike(@Nullable Like like) {
            this.like = like;
        }
    }

    public WebDavCloudSearchBody() {
    }

    @Element
    public static /* synthetic */ void getBasicsearch$annotations() {
    }

    @Nullable
    public final BaseSearch getBasicsearch() {
        return this.basicsearch;
    }

    public final void setBasicsearch(@Nullable BaseSearch baseSearch) {
        this.basicsearch = baseSearch;
    }

    public WebDavCloudSearchBody(@Nullable String str, @Nullable String str2) {
        this();
        BaseSearch baseSearch = new BaseSearch();
        this.basicsearch = baseSearch;
        Intrinsics.checkNotNull(baseSearch);
        baseSearch.setSelect(new Select());
        BaseSearch baseSearch2 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch2);
        Select select = baseSearch2.getSelect();
        Intrinsics.checkNotNull(select);
        select.setProp(new SelectProp());
        BaseSearch baseSearch3 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch3);
        Select select2 = baseSearch3.getSelect();
        Intrinsics.checkNotNull(select2);
        SelectProp prop = select2.getProp();
        Intrinsics.checkNotNull(prop);
        prop.setAllprop(new Allprop());
        BaseSearch baseSearch4 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch4);
        baseSearch4.setFrom(new From());
        BaseSearch baseSearch5 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch5);
        From from = baseSearch5.getFrom();
        Intrinsics.checkNotNull(from);
        from.setScope(new Scope());
        BaseSearch baseSearch6 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch6);
        From from2 = baseSearch6.getFrom();
        Intrinsics.checkNotNull(from2);
        Scope scope = from2.getScope();
        Intrinsics.checkNotNull(scope);
        scope.setDepth(Constants.ATTRNAME_INFINITY);
        BaseSearch baseSearch7 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch7);
        From from3 = baseSearch7.getFrom();
        Intrinsics.checkNotNull(from3);
        Scope scope2 = from3.getScope();
        Intrinsics.checkNotNull(scope2);
        scope2.setHref(str);
        BaseSearch baseSearch8 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch8);
        baseSearch8.setWhere(new Where());
        BaseSearch baseSearch9 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch9);
        Where where = baseSearch9.getWhere();
        Intrinsics.checkNotNull(where);
        where.setLike(new Like());
        BaseSearch baseSearch10 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch10);
        Where where2 = baseSearch10.getWhere();
        Intrinsics.checkNotNull(where2);
        Like like = where2.getLike();
        Intrinsics.checkNotNull(like);
        like.setProp(new Prop());
        BaseSearch baseSearch11 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch11);
        Where where3 = baseSearch11.getWhere();
        Intrinsics.checkNotNull(where3);
        Like like2 = where3.getLike();
        Intrinsics.checkNotNull(like2);
        Prop prop2 = like2.getProp();
        Intrinsics.checkNotNull(prop2);
        prop2.setDisplayname("");
        BaseSearch baseSearch12 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch12);
        Where where4 = baseSearch12.getWhere();
        Intrinsics.checkNotNull(where4);
        Like like3 = where4.getLike();
        Intrinsics.checkNotNull(like3);
        like3.setLiteral('%' + str2 + '%');
        BaseSearch baseSearch13 = this.basicsearch;
        Intrinsics.checkNotNull(baseSearch13);
        baseSearch13.setOrderby(new OrderBy());
    }
}
