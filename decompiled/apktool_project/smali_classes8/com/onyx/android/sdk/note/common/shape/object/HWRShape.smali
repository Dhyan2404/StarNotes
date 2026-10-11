.class public abstract Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/object/HWRShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
        "",
        "J",
        "I",
        "getHwrType",
        "()I",
        "hwrType",
        "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
        "K",
        "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
        "getSourceShapeGroup",
        "()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
        "setSourceShapeGroup",
        "(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V",
        "sourceShapeGroup",
        "<init>",
        "(I)V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/object/HWRShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HWR_TYPE_NONE:I = 0x0

.field public static final HWR_TYPE_TEXT_CHAR:I = 0x1


# instance fields
.field public final J:I

.field public K:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/HWRShape$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->J:I

    return-void
.end method


# virtual methods
.method public final getHwrType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->J:I

    return p0
.end method

.method public final getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->K:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    return-object p0
.end method

.method public final setSourceShapeGroup(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->K:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    return-void
.end method
