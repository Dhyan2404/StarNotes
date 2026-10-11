.class public final synthetic Lcom/sunia/HTREnginev2/z4p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/z4p;->e:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/z4p;->e:F

    check-cast p1, Lcom/sunia/HTREnginev2/s1;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/q1;->d(FLcom/sunia/HTREnginev2/s1;)Z

    move-result p0

    return p0
.end method
