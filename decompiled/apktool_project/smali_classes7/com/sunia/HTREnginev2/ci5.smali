.class public final synthetic Lcom/sunia/HTREnginev2/ci5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/vml/impl/CTLineImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/vml/impl/CTLineImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ci5;->e:Lcom/microsoft/schemas/vml/impl/CTLineImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ci5;->e:Lcom/microsoft/schemas/vml/impl/CTLineImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/schemas/vml/impl/CTLineImpl;->getWrapArray(I)Lcom/microsoft/schemas/office/word/CTWrap;

    move-result-object p0

    return-object p0
.end method
