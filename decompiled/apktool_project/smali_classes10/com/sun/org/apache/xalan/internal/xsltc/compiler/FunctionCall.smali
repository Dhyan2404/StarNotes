.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;
    }
.end annotation


# static fields
.field private static final EMPTY_ARG_LIST:Ljava/util/Vector;

.field protected static final EXSLT_COMMON:Ljava/lang/String; = "http://exslt.org/common"

.field protected static final EXSLT_DATETIME:Ljava/lang/String; = "http://exslt.org/dates-and-times"

.field protected static final EXSLT_MATH:Ljava/lang/String; = "http://exslt.org/math"

.field protected static final EXSLT_SETS:Ljava/lang/String; = "http://exslt.org/sets"

.field protected static final EXSLT_STRINGS:Ljava/lang/String; = "http://exslt.org/strings"

.field protected static final EXT_XALAN:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field protected static final EXT_XSLTC:Ljava/lang/String; = "http://xml.apache.org/xalan/xsltc"

.field protected static final JAVA_EXT_XALAN:Ljava/lang/String; = "http://xml.apache.org/xalan/java"

.field protected static final JAVA_EXT_XALAN_OLD:Ljava/lang/String; = "http://xml.apache.org/xslt/java"

.field protected static final JAVA_EXT_XSLTC:Ljava/lang/String; = "http://xml.apache.org/xalan/xsltc/java"

.field protected static final NAMESPACE_FORMAT_CLASS:I = 0x1

.field protected static final NAMESPACE_FORMAT_CLASS_OR_PACKAGE:I = 0x3

.field protected static final NAMESPACE_FORMAT_JAVA:I = 0x0

.field protected static final NAMESPACE_FORMAT_PACKAGE:I = 0x2

.field private static final _extensionFunctionTable:Ljava/util/Hashtable;

.field private static final _extensionNamespaceTable:Ljava/util/Hashtable;

.field private static final _internal2Java:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

.field private static final _java2Internal:Ljava/util/Hashtable;


# instance fields
.field private final _arguments:Ljava/util/Vector;

.field private _chosenConstructor:Ljava/lang/reflect/Constructor;

.field private _chosenMethod:Ljava/lang/reflect/Method;

.field private _chosenMethodType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

.field private _className:Ljava/lang/String;

.field private _clazz:Ljava/lang/Class;

.field private _fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _isExtConstructor:Z

.field private _isStatic:Z

.field private _namespace_format:I

.field _thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private unresolvedExternal:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const-string v0, "nodeset"

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    sput-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->EMPTY_ARG_LIST:Ljava/util/Vector;

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-direct {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;-><init>()V

    sput-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_internal2Java:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    sput-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_java2Internal:Ljava/util/Hashtable;

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_extensionNamespaceTable:Ljava/util/Hashtable;

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    sput-object v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_extensionFunctionTable:Ljava/util/Hashtable;

    :try_start_0
    const-class v9, Lorg/w3c/dom/Node;

    const-class v10, Lorg/w3c/dom/NodeList;

    sget-object v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v12, v13, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v11, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const-class v14, Ljava/lang/Boolean;

    const/4 v15, 0x1

    invoke-direct {v12, v14, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v11, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v14, 0x2

    invoke-direct {v12, v3, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v11, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v14, v15, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v15, 0x1

    invoke-direct {v14, v1, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    invoke-direct {v14, v15, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v16, v0

    const/4 v0, 0x3

    invoke-direct {v5, v14, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v17, v8

    const/4 v8, 0x4

    invoke-direct {v5, v0, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v18, v7

    const/4 v7, 0x5

    invoke-direct {v5, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x6

    invoke-direct {v5, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x7

    invoke-direct {v5, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/16 v8, 0x8

    invoke-direct {v5, v3, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v12, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v19, v12

    const/4 v12, 0x0

    invoke-direct {v8, v7, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v7, 0x2

    invoke-direct {v1, v15, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v7, 0x3

    invoke-direct {v1, v14, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v7, 0x4

    invoke-direct {v1, v0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    invoke-direct {v1, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x6

    invoke-direct {v1, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x7

    invoke-direct {v1, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/16 v7, 0x8

    invoke-direct {v1, v3, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v8, 0x0

    invoke-direct {v7, v10, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v8, 0x1

    invoke-direct {v7, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v8, 0x2

    invoke-direct {v7, v3, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v8, 0x3

    invoke-direct {v7, v2, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x0

    invoke-direct {v8, v10, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x1

    invoke-direct {v8, v9, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x2

    invoke-direct {v8, v3, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x3

    invoke-direct {v8, v2, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ResultTree:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x0

    invoke-direct {v8, v10, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x1

    invoke-direct {v8, v9, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x2

    invoke-direct {v8, v3, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x3

    invoke-direct {v8, v2, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    const/4 v12, 0x0

    invoke-direct {v8, v3, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v4, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v13, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v6, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v8, v19

    invoke-virtual {v6, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v14, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v15, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://xml.apache.org/xalan"

    const-string v1, "com.sun.org.apache.xalan.internal.lib.Extensions"

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/common"

    const-string v1, "com.sun.org.apache.xalan.internal.lib.ExsltCommon"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/math"

    const-string v1, "com.sun.org.apache.xalan.internal.lib.ExsltMath"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/sets"

    const-string v1, "com.sun.org.apache.xalan.internal.lib.ExsltSets"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/dates-and-times"

    const-string v1, "com.sun.org.apache.xalan.internal.lib.ExsltDatetime"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/strings"

    const-string v1, "com.sun.org.apache.xalan.internal.lib.ExsltStrings"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/common:nodeSet"

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://exslt.org/common:objectType"

    const-string v3, "objectType"

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://xml.apache.org/xalan:nodeset"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->EMPTY_ARG_LIST:Ljava/util/Vector;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isExtConstructor:Z

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isStatic:Z

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    .line 8
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method private findConstructors()Ljava/util/Vector;
    .locals 7

    const-string v0, "CLASS_NOT_FOUND_ERR"

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    if-nez v4, :cond_0

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v1, :cond_2

    if-nez v3, :cond_1

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move-object v3, v6

    :cond_1
    aget-object v6, v4, v5

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_3
    return-object v3
.end method

.method private findMethods()Ljava/util/Vector;
    .locals 8

    const-string v0, "CLASS_NOT_FOUND_ERR"

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    if-nez v4, :cond_0

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_3

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v1, :cond_2

    if-nez v2, :cond_1

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    move-object v2, v7

    :cond_1
    aget-object v7, v5, v6

    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_3
    return-object v2
.end method

.method private getMethodSignature(Ljava/util/Vector;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string p0, "I"

    return-object p0

    .line 10
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string p0, "B"

    return-object p0

    .line 11
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string p0, "J"

    return-object p0

    .line 12
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string p0, "F"

    return-object p0

    .line 13
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string p0, "D"

    return-object p0

    .line 14
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string p0, "S"

    return-object p0

    .line 15
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string p0, "C"

    return-object p0

    .line 16
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    const-string p0, "Z"

    return-object p0

    .line 17
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    const-string p0, "V"

    return-object p0

    .line 18
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "UNKNOWN_SIG_TYPE_ERR"

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    new-instance p0, Ljava/lang/Error;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    .line 31
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 32
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ")V"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 25
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 26
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceDash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2d

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private translateUnallowedExtension(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 3

    const-string v0, "unallowed_extension_functionF"

    const-string v1, "(Ljava/lang/String;)V"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {p1, v2, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public final argument()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public final argumentCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getClassNameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_extensionNamespaceTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "http://xml.apache.org/xalan/xsltc/java"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x27

    if-le p0, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string p0, "http://xml.apache.org/xalan/java"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x21

    if-le p0, v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    const-string p0, "http://xml.apache.org/xslt/java"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x20

    if-le p0, v1, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_7

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExtension()Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "http://xml.apache.org/xalan/xsltc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandard()Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method public final setArgument(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "funcall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->isSecureProcessing()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->isStandard()Z

    move-result v7

    const-string v8, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->isExtension()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->unresolvedExternal:Z

    if-eqz v7, :cond_1

    const-string v1, "unresolved_externalF"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {v4, v8, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto/16 :goto_a

    :cond_1
    iget-boolean v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isExtConstructor:Z

    const/16 v10, 0x28

    if-eqz v7, :cond_6

    if-eqz v6, :cond_2

    invoke-direct {v0, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->translateUnallowedExtension(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    :cond_2
    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    new-array v11, v3, [Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v3, :cond_3

    invoke-virtual {v0, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v14

    invoke-virtual {v13, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {v13, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    aget-object v13, v7, v12

    invoke-virtual {v14, v1, v2, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "function_call_tmp"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toJCType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v15

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v2, v13, v15, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v8

    invoke-virtual {v14, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->STORE(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_4

    invoke-virtual {v0, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v9

    aget-object v12, v11, v8

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->LOAD(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_2
    array-length v8, v7

    if-ge v9, v8, :cond_5

    aget-object v8, v7, v9

    invoke-static {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const/16 v8, 0x29

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v7, "V"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "<init>"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v7, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateFrom(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V

    goto/16 :goto_a

    :cond_6
    if-eqz v6, :cond_7

    invoke-direct {v0, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->translateUnallowedExtension(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    :cond_7
    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_8
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_9

    invoke-virtual {v0, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {v9, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v9

    aget-object v11, v7, v8

    invoke-virtual {v9, v1, v2, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_4
    array-length v10, v7

    if-ge v9, v10, :cond_a

    aget-object v10, v7, v9

    invoke-static {v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v6, v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_6

    :cond_b
    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v3, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-eqz v4, :cond_c

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    goto :goto_5

    :cond_c
    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {v4, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    :goto_5
    invoke-virtual {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_6
    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateFrom(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V

    goto/16 :goto_a

    :cond_d
    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v3, :cond_e

    invoke-virtual {v0, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {v6, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "F"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sumF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v2, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    goto :goto_9

    :cond_f
    const-string v3, "normalize_spaceF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, ""

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethodType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->toSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "()Ljava/lang/String;"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v2, "ILcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    goto :goto_9

    :cond_10
    move-object v2, v6

    :goto_9
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethodType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->toSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v5, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_a
    return-void
.end method

.method public translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethodType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->resultType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    instance-of p1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    if-nez p1, :cond_1

    instance-of p1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    :cond_2
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->isExtension()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v0, v3, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckStandard(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->isStandard()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckStandard(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getClassNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_4

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isStatic:Z

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    iput v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    :goto_0
    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v2, :cond_5

    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v2, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    iput v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    iput v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    goto :goto_1

    :cond_5
    iput v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    :goto_1
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->replaceDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_extensionFunctionTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v0, v3, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckStandard(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v2, v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckExternal(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0
    :try_end_2
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->getErrorMsg()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "METHOD_NOT_FOUND_ERR"

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method

.method public typeCheckArgs(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public typeCheckConstructor(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->findConstructors()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckArgs(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/util/Vector;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    move v9, v3

    move v10, v9

    :goto_1
    if-ge v9, v2, :cond_3

    aget-object v11, v8, v9

    invoke-virtual {p1, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_internal2Java:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v13, v12, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->maps(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    check-cast v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    iget v11, v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;->distance:I

    add-int/2addr v10, v11

    goto :goto_2

    :cond_0
    instance-of v13, v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    if-eqz v13, :cond_2

    check-cast v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    invoke-virtual {v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object v13

    if-ne v13, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v10, v4

    :cond_3
    if-ne v9, v2, :cond_5

    if-ge v10, v6, :cond_5

    iput-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isExtConstructor:Z

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    if-eqz v6, :cond_4

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->newObjectType(Ljava/lang/Class;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v6

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->newObjectType(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v6

    :goto_3
    iput-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move v6, v10

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    const-string v1, "ARGUMENT_CONVERSION_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getMethodSignature(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_8
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public typeCheckExternal(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckConstructor(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    iput-boolean v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isStatic:Z

    :cond_1
    iget-boolean v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_isStatic:Z

    const-string v5, "NO_JAVA_FUNCT_THIS_REF"

    const/4 v6, 0x0

    if-nez v4, :cond_6

    iget v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    if-eqz v4, :cond_3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    :goto_1
    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v7

    iget v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_namespace_format:I

    if-ne v9, v3, :cond_4

    instance-of v9, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_clazz:Ljava/lang/Class;

    if-eqz v9, :cond_4

    move-object v10, v7

    check-cast v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v4, v3

    :cond_4
    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    instance-of v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    if-eqz v4, :cond_5

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;->getJavaClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {v0, v5, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_6
    move-object/from16 v8, p1

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FUNCTION_RESOLVE_ERR"

    invoke-virtual {v0, v0, v1, v4, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportWarning(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput-boolean v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->unresolvedExternal:Z

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object v1

    :cond_8
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->findMethods()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckArgs(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/util/Vector;

    move-result-object v7

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move v9, v6

    const v10, 0x7fffffff

    :goto_3
    if-ge v9, v2, :cond_10

    invoke-virtual {v4, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    move v13, v6

    move v14, v13

    :goto_4
    if-ge v13, v1, :cond_d

    aget-object v15, v12, v13

    invoke-virtual {v7, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_internal2Java:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v8, v6, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->maps(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    check-cast v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;

    iget v6, v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall$JavaType;->distance:I

    add-int/2addr v14, v6

    goto :goto_6

    :cond_9
    instance-of v8, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    if-eqz v8, :cond_a

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    instance-of v8, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    if-eqz v8, :cond_c

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;->getJavaClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v14, v14, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    const v14, 0x7fffffff

    :cond_d
    if-ne v13, v1, :cond_f

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_java2Internal:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-nez v6, :cond_e

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->newObjectType(Ljava/lang/Class;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_e
    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eqz v3, :cond_f

    if-ge v14, v10, :cond_f

    iput-object v11, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethod:Ljava/lang/reflect/Method;

    move v10, v14

    :cond_f
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_10
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_thisArgument:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v2, :cond_12

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getMethodSignature(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1

    :cond_12
    :goto_7
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eqz v1, :cond_14

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne v1, v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setMultiDocument(Z)V

    :cond_13
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    const-string v2, "ARGUMENT_CONVERSION_ERR"

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->getMethodSignature(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1

    :cond_15
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_className:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "METHOD_NOT_FOUND_ERR"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
.end method

.method public typeCheckStandard(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->clearNamespace()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->typeCheckArgs(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Ljava/util/Vector;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_fname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->lookupPrimop(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->argsType()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_arguments:Ljava/util/Vector;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    invoke-direct {v5, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    invoke-virtual {v4, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    throw p1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->_chosenMethodType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->resultType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    throw p1
.end method
