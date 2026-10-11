.class public Lcom/sunia/HTREnginev2/k2e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sunia/HTREnginev2/k2e$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/k2e$b;Lcom/sunia/HTREnginev2/k2e$b;)I
    .locals 0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/k2e$b;->a(Lcom/sunia/HTREnginev2/k2e$b;)S

    move-result p0

    invoke-static {p2}, Lcom/sunia/HTREnginev2/k2e$b;->a(Lcom/sunia/HTREnginev2/k2e$b;)S

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/k2e$b;

    check-cast p2, Lcom/sunia/HTREnginev2/k2e$b;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/k2e$a;->a(Lcom/sunia/HTREnginev2/k2e$b;Lcom/sunia/HTREnginev2/k2e$b;)I

    move-result p0

    return p0
.end method
