.class public final Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001a\u0010!\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "actualScale",
        "",
        "getActualScale",
        "()F",
        "setActualScale",
        "(F)V",
        "coverPageId",
        "",
        "getCoverPageId",
        "()Ljava/lang/String;",
        "setCoverPageId",
        "(Ljava/lang/String;)V",
        "defaultTemplate",
        "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;",
        "getDefaultTemplate",
        "()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;",
        "setDefaultTemplate",
        "(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;)V",
        "docOptions",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;",
        "getDocOptions",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;",
        "setDocOptions",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V",
        "offsetX",
        "getOffsetX",
        "setOffsetX",
        "offsetY",
        "getOffsetY",
        "setOffsetY",
        "viewportId",
        "getViewportId",
        "setViewportId",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private actualScale:F

.field private coverPageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private defaultTemplate:Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private docOptions:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private offsetX:F

.field private offsetY:F

.field private viewportId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->viewportId:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->actualScale:F

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->coverPageId:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->docOptions:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    return-void
.end method


# virtual methods
.method public final getActualScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->actualScale:F

    return p0
.end method

.method public final getCoverPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->coverPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDefaultTemplate()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->defaultTemplate:Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    return-object p0
.end method

.method public final getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->docOptions:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    return-object p0
.end method

.method public final getOffsetX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->offsetX:F

    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->offsetY:F

    return p0
.end method

.method public final getViewportId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->viewportId:Ljava/lang/String;

    return-object p0
.end method

.method public final setActualScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->actualScale:F

    return-void
.end method

.method public final setCoverPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->coverPageId:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultTemplate(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->defaultTemplate:Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    return-void
.end method

.method public final setDocOptions(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->docOptions:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    return-void
.end method

.method public final setOffsetX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->offsetX:F

    return-void
.end method

.method public final setOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->offsetY:F

    return-void
.end method

.method public final setViewportId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->viewportId:Ljava/lang/String;

    return-void
.end method
