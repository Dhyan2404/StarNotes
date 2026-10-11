.class public final Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\t\u0010\u000c\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0008\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/theme/utils/ThemeStyle;",
        "",
        "",
        "isVipStyle",
        "",
        "component1",
        "component2",
        "style",
        "styleNameRes",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "equals",
        "a",
        "I",
        "getStyle",
        "()I",
        "setStyle",
        "(I)V",
        "b",
        "getStyleNameRes",
        "setStyleNameRes",
        "<init>",
        "(II)V",
        "Companion",
        "sdk-skinChange_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STYLE_DARK_LIGHT:I = 0x1

.field public static final STYLE_PAYMENT:I = 0x4

.field public static final STYLE_SPECIAL:I = 0x2

.field public static final STYLE_VIP:I = 0x3


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->Companion:Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    iput p2, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/theme/utils/ThemeStyle;IIILjava/lang/Object;)Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->copy(II)Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    return p0
.end method

.method public final copy(II)Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    iget v1, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    iget v3, p1, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    iget p1, p1, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    return p0
.end method

.method public final getStyleNameRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isVipStyle()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    return-void
.end method

.method public final setStyleNameRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeStyle(style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", styleNameRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
