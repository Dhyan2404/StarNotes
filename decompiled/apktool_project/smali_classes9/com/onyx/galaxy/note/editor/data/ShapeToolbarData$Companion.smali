.class public final Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;",
        "",
        "()V",
        "DEFAULT_SHAPE_TOOLBAR_DATA",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "getDEFAULT_SHAPE_TOOLBAR_DATA",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "DEFAULT_SHAPE_TOOLBAR_DATA$delegate",
        "Lkotlin/Lazy;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_SHAPE_TOOLBAR_DATA()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->access$getDEFAULT_SHAPE_TOOLBAR_DATA$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    return-object p0
.end method
