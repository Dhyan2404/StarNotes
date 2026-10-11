.class public final Lcom/couchbase/lite/CBLError$Domain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/CBLError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Domain"
.end annotation


# static fields
.field public static final CBLITE:Ljava/lang/String; = "CouchbaseLite"

.field public static final FLEECE:Ljava/lang/String; = "CouchbaseLite.Fleece"

.field public static final POSIX:Ljava/lang/String; = "POSIXErrorDomain"

.field public static final SQLITE:Ljava/lang/String; = "CouchbaseLite.SQLite"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
