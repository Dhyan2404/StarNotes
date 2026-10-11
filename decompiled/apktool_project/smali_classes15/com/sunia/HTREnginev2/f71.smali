.class public final synthetic Lcom/sunia/HTREnginev2/f71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f71;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f71;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;->setXfArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    return-void
.end method
