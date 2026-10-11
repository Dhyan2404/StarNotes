.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;,
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001:\u0008\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R&\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;",
        "Ljava/io/Serializable;",
        "searchHref",
        "",
        "query",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "()V",
        "basicsearch",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;",
        "getBasicsearch$annotations",
        "getBasicsearch",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;",
        "setBasicsearch",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;)V",
        "BaseSearch",
        "From",
        "Like",
        "OrderBy",
        "Scope",
        "Select",
        "SelectProp",
        "Where",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lorg/simpleframework/xml/NamespaceList;
    value = {
        .subannotation Lorg/simpleframework/xml/Namespace;
            prefix = "d"
            reference = "DAV:"
        .end subannotation,
        .subannotation Lorg/simpleframework/xml/Namespace;
            prefix = "oc"
            reference = "http://owncloud.org/ns"
        .end subannotation
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "d:searchrequest"
.end annotation


# instance fields
.field private basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;-><init>()V

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->setSelect(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;)V

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getSelect()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;->setProp(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;)V

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getSelect()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;->getProp()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$SelectProp;->setAllprop(Lcom/thegrizzlylabs/sardineandroid/model/Allprop;)V

    .line 7
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->setFrom(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;)V

    .line 8
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getFrom()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;->setScope(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;)V

    .line 9
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getFrom()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;->getScope()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;->setDepth(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getFrom()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;->getScope()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;->setHref(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->setWhere(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;)V

    .line 12
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getWhere()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;->setLike(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;)V

    .line 13
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getWhere()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;->getLike()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    .line 14
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getWhere()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;->getLike()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setDisplayname(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->getWhere()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;->getLike()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->setLiteral(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;

    invoke-direct {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->setOrderby(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;)V

    return-void
.end method

.method public static synthetic getBasicsearch$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBasicsearch()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    return-object p0
.end method

.method public final setBasicsearch(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;->basicsearch:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;

    return-void
.end method
