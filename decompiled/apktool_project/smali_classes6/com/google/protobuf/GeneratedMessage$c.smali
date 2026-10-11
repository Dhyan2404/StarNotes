.class public Lcom/google/protobuf/GeneratedMessage$c;
.super Lcom/google/protobuf/GeneratedMessage$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/protobuf/Message;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Message;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$scope",
            "val$name"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$c;->b:Lcom/google/protobuf/Message;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$f;-><init>(Lcom/google/protobuf/GeneratedMessage$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$c;->b:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p0

    return-object p0
.end method
