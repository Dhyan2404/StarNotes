.class public final Lorg/apache/logging/log4j/message/ReusableMessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/MessageFactory2;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    value = {
        "allocation"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/message/ReusableMessageFactory;

.field private static final serialVersionUID:J = -0x7c7f2e98cf436953L

.field private static threadLocalObjectMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/message/ReusableObjectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static threadLocalParameterized:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static threadLocalSimpleMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/message/ReusableSimpleMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ReusableMessageFactory;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalParameterized:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalSimpleMessage:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalObjectMessage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getObject()Lorg/apache/logging/log4j/message/ReusableObjectMessage;
    .locals 2

    sget-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalObjectMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ReusableObjectMessage;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalObjectMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2

    sget-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalParameterized:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalParameterized:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, v0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;-><init>()V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserve()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method private static getSimple()Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
    .locals 2

    sget-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalSimpleMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalSimpleMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static release(Lorg/apache/logging/log4j/message/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/HTREnginev2/yud;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/HTREnginev2/yud;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/yud;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public newMessage(Ljava/lang/CharSequence;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getSimple()Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->set(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 16
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getObject()Lorg/apache/logging/log4j/message/ReusableObjectMessage;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 14
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getSimple()Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->set(Ljava/lang/String;)V

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 4
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 5
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 6
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 7
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 8
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 9
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 10
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 11
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 12
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 13
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public varargs newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object p0

    return-object p0
.end method
