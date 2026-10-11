.class public final synthetic Lcom/sunia/HTREnginev2/grc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTextFieldsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTextFieldsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/grc;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTextFieldsImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/grc;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTextFieldsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTextFieldsImpl;->sizeOfTextFieldArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
