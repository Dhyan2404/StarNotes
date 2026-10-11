.class public final synthetic Lcom/sunia/HTREnginev2/z84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFutureMetadataImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFutureMetadataImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z84;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFutureMetadataImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z84;->e:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFutureMetadataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFutureMetadataImpl;->setBkArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;)V

    return-void
.end method
