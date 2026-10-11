.class public final synthetic Lcom/sunia/HTREnginev2/h67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h67;->e:Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h67;->e:Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;

    invoke-virtual {p0}, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;->sizeOfPersonArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
