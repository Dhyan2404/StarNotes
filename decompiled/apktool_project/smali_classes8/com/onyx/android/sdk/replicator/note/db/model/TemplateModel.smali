.class public final Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n1#2:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 O2\u00020\u0001:\u0001OB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010G\u001a\u00020\u0004H\u0007J\u0008\u0010H\u001a\u00020IH\u0007J\u0008\u0010J\u001a\u00020IH\u0007J\u0008\u0010K\u001a\u00020IH\u0007J\u0006\u0010L\u001a\u00020MJ\u0008\u0010N\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R \u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\'\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0015\"\u0004\u0008)\u0010\u0017R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001e\u00100\u001a\u0002018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R \u00109\u001a\u0008\u0012\u0004\u0012\u00020;0:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u001b\"\u0004\u0008=\u0010\u001dR\u001a\u0010>\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008R\u001a\u0010A\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u0015\"\u0004\u0008C\u0010\u0017R\u001a\u0010D\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u0015\"\u0004\u0008F\u0010\u0017\u00a8\u0006P"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "categoryId",
        "",
        "getCategoryId",
        "()Ljava/lang/String;",
        "setCategoryId",
        "(Ljava/lang/String;)V",
        "contentPageId",
        "getContentPageId",
        "setContentPageId",
        "orderIndex",
        "",
        "getOrderIndex",
        "()F",
        "setOrderIndex",
        "(F)V",
        "orientation",
        "",
        "getOrientation",
        "()I",
        "setOrientation",
        "(I)V",
        "resourceIdList",
        "",
        "getResourceIdList",
        "()Ljava/util/List;",
        "setResourceIdList",
        "(Ljava/util/List;)V",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "sizeFormat",
        "getSizeFormat",
        "setSizeFormat",
        "source",
        "getSource",
        "setSource",
        "status",
        "getStatus",
        "setStatus",
        "templateArgs",
        "Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;",
        "getTemplateArgs",
        "()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;",
        "setTemplateArgs",
        "(Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;)V",
        "templateResourceWrapper",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;",
        "getTemplateResourceWrapper",
        "()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;",
        "setTemplateResourceWrapper",
        "(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V",
        "title",
        "getTitle",
        "setTitle",
        "titleList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;",
        "getTitleList",
        "setTitleList",
        "titleResName",
        "getTitleResName",
        "setTitleResName",
        "type",
        "getType",
        "setType",
        "version",
        "getVersion",
        "setVersion",
        "getLocalTitle",
        "isLandscape",
        "",
        "isOfficialSource",
        "isPortrait",
        "resetRevisionId",
        "",
        "toString",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTemplateModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/TemplateModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n1#2:221\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private categoryId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentPageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orderIndex:F

.field private orientation:I

.field private resourceIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sizeFormat:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private source:I

.field private status:I

.field private templateArgs:Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient templateResourceWrapper:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleResName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleResName:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orientation:I

    const-string v1, "A4"

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->sizeFormat:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->type:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->resourceIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->categoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->contentPageId:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orderIndex:F

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->revisionId:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleList:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->categoryId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;->generateResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setTemplateUniqueId(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateResourceWrapper:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    return-void
.end method


# virtual methods
.method public final getCategoryId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->contentPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleList:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->title:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TitleModelKt;->getLocalTitle(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orderIndex:F

    return p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orientation:I

    return p0
.end method

.method public final getResourceIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->resourceIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSizeFormat()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->sizeFormat:Ljava/lang/String;

    return-object p0
.end method

.method public final getSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->source:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->status:I

    return p0
.end method

.method public final getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateArgs:Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    return-object p0
.end method

.method public final getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateResourceWrapper:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleList:Ljava/util/List;

    return-object p0
.end method

.method public final getTitleResName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleResName:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->type:I

    return p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->version:I

    return p0
.end method

.method public final isLandscape()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->Companion:Lcom/onyx/android/sdk/base/data/Orientation$Companion;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orientation:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/Orientation$Companion;->isLandscape(I)Z

    move-result p0

    return p0
.end method

.method public final isOfficialSource()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->source:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPortrait()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->Companion:Lcom/onyx/android/sdk/base/data/Orientation$Companion;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orientation:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/Orientation$Companion;->isPortrait(I)Z

    move-result p0

    return p0
.end method

.method public final resetRevisionId()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setCategoryId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public final setContentPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->contentPageId:Ljava/lang/String;

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orderIndex:F

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orientation:I

    return-void
.end method

.method public final setResourceIdList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->resourceIdList:Ljava/util/List;

    return-void
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setSizeFormat(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->sizeFormat:Ljava/lang/String;

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->source:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->status:I

    return-void
.end method

.method public final setTemplateArgs(Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateArgs:Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    return-void
.end method

.method public final setTemplateResourceWrapper(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateResourceWrapper:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTitleList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleList:Ljava/util/List;

    return-void
.end method

.method public final setTitleResName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->titleResName:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->type:I

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniqueId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizeFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->sizeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateResourceWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateResourceWrapper:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " spaceArgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->templateArgs:Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
