.class final Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/SlideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)H\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R\u001a\u0010\"\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0016\"\u0004\u0008$\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;",
        "Landroid/view/View$BaseSavedState;",
        "superState",
        "Landroid/os/Parcelable;",
        "(Landroid/os/Parcelable;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "animatorCurrentTime",
        "",
        "getAnimatorCurrentTime",
        "()J",
        "setAnimatorCurrentTime",
        "(J)V",
        "isAnimating",
        "",
        "()Z",
        "setAnimating",
        "(Z)V",
        "leftAlphaMax",
        "",
        "getLeftAlphaMax",
        "()F",
        "setLeftAlphaMax",
        "(F)V",
        "leftAlphaMin",
        "getLeftAlphaMin",
        "setLeftAlphaMin",
        "leftShowPercent",
        "getLeftShowPercent",
        "setLeftShowPercent",
        "rightAlphaMax",
        "getRightAlphaMax",
        "setRightAlphaMax",
        "rightAlphaMin",
        "getRightAlphaMin",
        "setRightAlphaMin",
        "writeToParcel",
        "",
        "out",
        "flags",
        "",
        "Companion",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private animatorCurrentTime:J

.field private isAnimating:Z

.field private leftAlphaMax:F

.field private leftAlphaMin:F

.field private leftShowPercent:F

.field private rightAlphaMax:F

.field private rightAlphaMin:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->Companion:Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMax:F

    .line 6
    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMax:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftShowPercent:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->isAnimating:Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->animatorCurrentTime:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMin:F

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMax:F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMin:F

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMax:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "superState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMax:F

    .line 3
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMax:F

    return-void
.end method


# virtual methods
.method public final getAnimatorCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->animatorCurrentTime:J

    return-wide v0
.end method

.method public final getLeftAlphaMax()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMax:F

    return p0
.end method

.method public final getLeftAlphaMin()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMin:F

    return p0
.end method

.method public final getLeftShowPercent()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftShowPercent:F

    return p0
.end method

.method public final getRightAlphaMax()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMax:F

    return p0
.end method

.method public final getRightAlphaMin()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMin:F

    return p0
.end method

.method public final isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->isAnimating:Z

    return p0
.end method

.method public final setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->isAnimating:Z

    return-void
.end method

.method public final setAnimatorCurrentTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->animatorCurrentTime:J

    return-void
.end method

.method public final setLeftAlphaMax(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMax:F

    return-void
.end method

.method public final setLeftAlphaMin(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMin:F

    return-void
.end method

.method public final setLeftShowPercent(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftShowPercent:F

    return-void
.end method

.method public final setRightAlphaMax(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMax:F

    return-void
.end method

.method public final setRightAlphaMin(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMin:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftShowPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->isAnimating:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->animatorCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMin:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->leftAlphaMax:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMin:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;->rightAlphaMax:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
