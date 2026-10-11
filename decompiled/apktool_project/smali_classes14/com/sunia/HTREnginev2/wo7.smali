.class public final synthetic Lcom/sunia/HTREnginev2/wo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTPtListImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTPtListImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wo7;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTPtListImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wo7;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTPtListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTPtListImpl;->insertNewPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPt;

    move-result-object p0

    return-object p0
.end method
