.class public final synthetic Lcom/sunia/HTREnginev2/yhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:[F

.field public final synthetic f:[I


# direct methods
.method public synthetic constructor <init>([F[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yhf;->e:[F

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yhf;->f:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yhf;->e:[F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yhf;->f:[I

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->a([F[ILjava/lang/Float;)V

    return-void
.end method
