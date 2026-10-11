.class public Lcom/sunia/HTREnginev2/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final d:J

.field public final e:F


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/z$b;->d:J

    iput p3, p0, Lcom/sunia/HTREnginev2/z$b;->e:F

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->isCopyAndPasteModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/sunia/HTREnginev2/q;->a(FF)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
