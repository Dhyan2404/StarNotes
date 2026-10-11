.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;",
        "",
        "()V",
        "LINK_ANNOTATION",
        "",
        "LINK_AUDIO",
        "LINK_DOCUMENT",
        "LINK_IMAGE",
        "LINK_NOTE",
        "LINK_PAGE_NUMBER",
        "LINK_URL",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_ANNOTATION:Ljava/lang/String; = "ANNOTATION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_AUDIO:Ljava/lang/String; = "AUDIO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_DOCUMENT:Ljava/lang/String; = "DOCUMENT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_IMAGE:Ljava/lang/String; = "IMAGE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_NOTE:Ljava/lang/String; = "NOTE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_PAGE_NUMBER:Ljava/lang/String; = "PAGE_NUMBER"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_URL:Ljava/lang/String; = "URL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
