.class public final synthetic Lcom/sunia/HTREnginev2/m67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/impl/CTPersonTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/impl/CTPersonTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m67;->e:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/impl/CTPersonTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m67;->e:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/impl/CTPersonTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/impl/CTPersonTypeImpl;->removeLast(I)V

    return-void
.end method
