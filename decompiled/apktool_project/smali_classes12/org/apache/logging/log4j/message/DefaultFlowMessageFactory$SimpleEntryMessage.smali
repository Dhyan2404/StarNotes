.class final Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleEntryMessage;
.super Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/EntryMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleEntryMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entryText",
            "message"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    return-void
.end method
