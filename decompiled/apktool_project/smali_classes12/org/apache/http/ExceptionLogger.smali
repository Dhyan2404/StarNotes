.class public interface abstract Lorg/apache/http/ExceptionLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_OP:Lorg/apache/http/ExceptionLogger;

.field public static final STD_ERR:Lorg/apache/http/ExceptionLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/ExceptionLogger$a;

    invoke-direct {v0}, Lorg/apache/http/ExceptionLogger$a;-><init>()V

    sput-object v0, Lorg/apache/http/ExceptionLogger;->NO_OP:Lorg/apache/http/ExceptionLogger;

    new-instance v0, Lorg/apache/http/ExceptionLogger$b;

    invoke-direct {v0}, Lorg/apache/http/ExceptionLogger$b;-><init>()V

    sput-object v0, Lorg/apache/http/ExceptionLogger;->STD_ERR:Lorg/apache/http/ExceptionLogger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/Exception;)V
.end method
