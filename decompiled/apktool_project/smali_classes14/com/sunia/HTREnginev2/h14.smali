.class public final synthetic Lcom/sunia/HTREnginev2/h14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTForEachImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTForEachImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h14;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTForEachImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h14;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTForEachImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTForEachImpl;->removeConstrLst(I)V

    return-void
.end method
