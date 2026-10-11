.class public final synthetic Lcom/sunia/HTREnginev2/ur8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/impl/CTRelationshipsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/xpackage/x2006/relationships/impl/CTRelationshipsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ur8;->e:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/impl/CTRelationshipsImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ur8;->e:Lorg/openxmlformats/schemas/xpackage/x2006/relationships/impl/CTRelationshipsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/impl/CTRelationshipsImpl;->sizeOfRelationshipArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
