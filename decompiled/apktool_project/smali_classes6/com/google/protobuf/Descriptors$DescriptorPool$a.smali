.class public final Lcom/google/protobuf/Descriptors$DescriptorPool$a;
.super Lcom/google/protobuf/Descriptors$GenericDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "fullName",
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object p2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public toProto()Lcom/google/protobuf/Message;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$a;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method
