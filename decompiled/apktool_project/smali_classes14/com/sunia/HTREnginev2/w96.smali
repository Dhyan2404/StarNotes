.class public final synthetic Lcom/sunia/HTREnginev2/w96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w96;->e:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w96;->e:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;->setExtArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;)V

    return-void
.end method
