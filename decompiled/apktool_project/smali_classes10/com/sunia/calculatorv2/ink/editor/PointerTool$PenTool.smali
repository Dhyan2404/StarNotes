.class public Lcom/sunia/calculatorv2/ink/editor/PointerTool$PenTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/editor/PointerTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/editor/PointerTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenTool"
.end annotation


# instance fields
.field public final a:[Lcom/sunia/HTREnginev2/z;


# direct methods
.method public varargs constructor <init>([Lcom/sunia/HTREnginev2/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$PenTool;->a:[Lcom/sunia/HTREnginev2/z;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$PenTool;->a:[Lcom/sunia/HTREnginev2/z;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2, p1, p2}, Lcom/sunia/HTREnginev2/z;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/HTREnginev2/p1;)V

    return-void
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 0

    const-string p0, "wet"

    return-object p0
.end method
