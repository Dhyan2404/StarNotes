.class public final Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;",
        "",
        "()V",
        "COVER",
        "",
        "COVER_CATEGORY_JSON_FILE_NAME",
        "CURRENT_COVER_REVISION",
        "",
        "CURRENT_TEMPLATE_REVISION",
        "TEMPLATE",
        "TEMPLATE_CATEGORY_JSON_FILE_NAME",
        "isLatestCoverRevision",
        "",
        "revision",
        "isLatestTemplateRevision",
        "sdk-data_release"
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
.field public static final COVER:Ljava/lang/String; = "cover"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COVER_CATEGORY_JSON_FILE_NAME:Ljava/lang/String; = "category_cover"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CURRENT_COVER_REVISION:I = 0x12

.field public static final CURRENT_TEMPLATE_REVISION:I = 0x18

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEMPLATE:Ljava/lang/String; = "template"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEMPLATE_CATEGORY_JSON_FILE_NAME:Ljava/lang/String; = "category_template"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLatestCoverRevision(I)Z
    .locals 0

    const/16 p0, 0x12

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLatestTemplateRevision(I)Z
    .locals 0

    const/16 p0, 0x18

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
