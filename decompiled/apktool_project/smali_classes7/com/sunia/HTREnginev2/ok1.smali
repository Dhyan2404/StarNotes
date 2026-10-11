.class public final synthetic Lcom/sunia/HTREnginev2/ok1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/excel/impl/CTClientDataImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/excel/impl/CTClientDataImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ok1;->e:Lcom/microsoft/schemas/office/excel/impl/CTClientDataImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ok1;->e:Lcom/microsoft/schemas/office/excel/impl/CTClientDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/schemas/office/excel/impl/CTClientDataImpl;->xsetCancelArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V

    return-void
.end method
