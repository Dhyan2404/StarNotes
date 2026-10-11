.class public final synthetic Lcom/sunia/HTREnginev2/e67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e67;->e:Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e67;->e:Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTPerson;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/impl/CTPersonListImpl;->setPersonArray(ILcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTPerson;)V

    return-void
.end method
