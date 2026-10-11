.class public final synthetic Lcom/sunia/HTREnginev2/do5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/do5;->e:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/do5;->e:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;->setPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;)V

    return-void
.end method
