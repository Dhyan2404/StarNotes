.class public final synthetic Lcom/sunia/HTREnginev2/njd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTWhenImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTWhenImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/njd;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTWhenImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/njd;->e:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTWhenImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTWhenImpl;->sizeOfLayoutNodeArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
