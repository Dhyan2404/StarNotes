.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayStyle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;",
        "",
        "()V",
        "ICON_DOUBLE_LINK",
        "",
        "getICON_DOUBLE_LINK",
        "()I",
        "setICON_DOUBLE_LINK",
        "(I)V",
        "ICON_INVISIBLE",
        "getICON_INVISIBLE",
        "setICON_INVISIBLE",
        "ICON_TITLE_BOX",
        "getICON_TITLE_BOX",
        "setICON_TITLE_BOX",
        "ICON_TITLE_UNDERLINE",
        "getICON_TITLE_UNDERLINE",
        "setICON_TITLE_UNDERLINE",
        "ONLY_ICON",
        "getONLY_ICON",
        "setONLY_ICON",
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
.field private static ICON_DOUBLE_LINK:I

.field private static ICON_INVISIBLE:I

.field private static ICON_TITLE_BOX:I

.field private static ICON_TITLE_UNDERLINE:I

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static ONLY_ICON:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    const/4 v0, 0x1

    sput v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_TITLE_UNDERLINE:I

    const/4 v0, 0x2

    sput v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_TITLE_BOX:I

    const/4 v0, 0x3

    sput v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_INVISIBLE:I

    const/4 v0, 0x4

    sput v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_DOUBLE_LINK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getICON_DOUBLE_LINK()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_DOUBLE_LINK:I

    return p0
.end method

.method public final getICON_INVISIBLE()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_INVISIBLE:I

    return p0
.end method

.method public final getICON_TITLE_BOX()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_TITLE_BOX:I

    return p0
.end method

.method public final getICON_TITLE_UNDERLINE()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_TITLE_UNDERLINE:I

    return p0
.end method

.method public final getONLY_ICON()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ONLY_ICON:I

    return p0
.end method

.method public final setICON_DOUBLE_LINK(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_DOUBLE_LINK:I

    return-void
.end method

.method public final setICON_INVISIBLE(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_INVISIBLE:I

    return-void
.end method

.method public final setICON_TITLE_BOX(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_TITLE_BOX:I

    return-void
.end method

.method public final setICON_TITLE_UNDERLINE(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ICON_TITLE_UNDERLINE:I

    return-void
.end method

.method public final setONLY_ICON(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->ONLY_ICON:I

    return-void
.end method
