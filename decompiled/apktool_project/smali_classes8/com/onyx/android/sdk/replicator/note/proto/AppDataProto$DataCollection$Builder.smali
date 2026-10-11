.class public final Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;",
        ">;",
        "Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollectionOrBuilder;"
    }
.end annotation


# instance fields
.field public i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

.field public j:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontListOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;
    .locals 2

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$a;)V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->access$602(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->access$602(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    .line 9
    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public clearFontList()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;
    .locals 0

    .line 3
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFontList()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    return-object p0
.end method

.method public getFontListBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->h()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;

    return-object p0
.end method

.method public getFontListOrBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontListOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontListOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final h()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;",
            "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->getFontList()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public hasFontList()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->access$400()Z

    return-void
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mergeFontList(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;->newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->access$800()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    .line 20
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->hasFontList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->getFontList()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeFontList(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;->access$700(Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public setFontList(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFontList(Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->j:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->i:Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection$Builder;

    return-object p0
.end method
