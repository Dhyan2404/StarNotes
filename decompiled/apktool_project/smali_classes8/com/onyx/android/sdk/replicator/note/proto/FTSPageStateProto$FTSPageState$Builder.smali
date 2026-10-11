.class public final Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;",
        ">;",
        "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateOrBuilder;"
    }
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:J

.field public k:J

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->h()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->h()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;
    .locals 3

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$a;)V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$1702(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->j:J

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$1802(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;J)J

    .line 6
    iget-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->k:J

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$1902(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;J)J

    .line 7
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2002(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2102(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2202(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->o:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2302(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;Z)Z

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->j:J

    .line 8
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->k:J

    .line 9
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->o:Z

    return-object p0
.end method

.method public clearCreatedAt()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->j:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public clearIndexed()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->o:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLang()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public clearPageId()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getPageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUniqueId()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUpdatedAt()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->k:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->j:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;
    .locals 0

    .line 3
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getIndexed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->o:Z

    return p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLangBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->k:J

    return-wide v0
.end method

.method public final h()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$1500()Z

    return-void
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
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

    .line 35
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    .line 36
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 4

    .line 10
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$1700(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getCreatedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getUpdatedAt()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2000(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2100(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2200(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getIndexed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getIndexed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setIndexed(Z)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    .line 29
    :cond_7
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2400(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->j:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public setIndexed(Z)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->o:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLangBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2900(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->n:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPageIdBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2700(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2800(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniqueIdBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->access$2600(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    return-object p0
.end method

.method public setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->k:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
