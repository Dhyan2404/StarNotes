.class public final Lcom/google/protobuf/ExtensionRegistry$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "number"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/ExtensionRegistry$b;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    iput p2, p0, Lcom/google/protobuf/ExtensionRegistry$b;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/ExtensionRegistry$b;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/ExtensionRegistry$b;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/ExtensionRegistry$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/protobuf/ExtensionRegistry$b;

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry$b;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p1, Lcom/google/protobuf/ExtensionRegistry$b;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/google/protobuf/ExtensionRegistry$b;->b:I

    iget p1, p1, Lcom/google/protobuf/ExtensionRegistry$b;->b:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry$b;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/google/protobuf/ExtensionRegistry$b;->b:I

    add-int/2addr v0, p0

    return v0
.end method
