.class public final synthetic Lcom/sunia/HTREnginev2/vgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTVolTopicImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTVolTopicImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vgd;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTVolTopicImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vgd;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTVolTopicImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTVolTopicImpl;->xsetStpArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V

    return-void
.end method
