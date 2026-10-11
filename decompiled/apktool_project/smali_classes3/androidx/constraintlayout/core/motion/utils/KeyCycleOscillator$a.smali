.class public Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;->e:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;)I
    .locals 0

    iget p0, p1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;->a:I

    iget p1, p2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;->a:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;

    check-cast p2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$a;->a(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$f;)I

    move-result p0

    return p0
.end method
