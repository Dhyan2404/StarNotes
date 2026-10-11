.class public final synthetic Lcom/sunia/HTREnginev2/j12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTColorTransformImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTColorTransformImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j12;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTColorTransformImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j12;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTColorTransformImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCTStyleLabel;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTColorTransformImpl;->setStyleLblArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCTStyleLabel;)V

    return-void
.end method
