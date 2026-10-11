.class public final synthetic Lcom/sunia/HTREnginev2/yua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/vml/impl/CTShapeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/vml/impl/CTShapeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yua;->e:Lcom/microsoft/schemas/vml/impl/CTShapeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yua;->e:Lcom/microsoft/schemas/vml/impl/CTShapeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/schemas/vml/impl/CTShapeImpl;->getEquationxmlArray(I)Lcom/microsoft/schemas/office/office/CTEquationXml;

    move-result-object p0

    return-object p0
.end method
