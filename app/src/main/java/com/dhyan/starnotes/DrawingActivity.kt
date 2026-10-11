package com.dhyan.starnotes

import android.graphics.Color
import android.os.Bundle
import android.widget.EditText
import android.widget.ImageButton
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.dhyan.starnotes.data.Note
import com.dhyan.starnotes.data.NoteDatabaseHelper
import com.dhyan.starnotes.view.DrawingCanvasView

class DrawingActivity : AppCompatActivity() {

    private lateinit var dbHelper: NoteDatabaseHelper
    private lateinit var canvasView: DrawingCanvasView
    private lateinit var editTitle: EditText
    private var noteId: Long = -1

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_drawing)

        dbHelper = NoteDatabaseHelper(this)
        canvasView = findViewById(R.id.drawingCanvasView)
        editTitle = findViewById(R.id.editDrawingTitle)

        val btnBack = findViewById<ImageButton>(R.id.btnDrawingBack)
        val btnSave = findViewById<ImageButton>(R.id.btnDrawingSave)
        val btnUndo = findViewById<ImageButton>(R.id.btnDrawingUndo)
        val btnClear = findViewById<ImageButton>(R.id.btnDrawingClear)
        val btnEraser = findViewById<ImageButton>(R.id.btnDrawingEraser)
        val btnPenBlack = findViewById<ImageButton>(R.id.btnPenBlack)
        val btnPenBlue = findViewById<ImageButton>(R.id.btnPenBlue)
        val btnPenRed = findViewById<ImageButton>(R.id.btnPenRed)
        val btnPenGreen = findViewById<ImageButton>(R.id.btnPenGreen)

        noteId = intent.getLongExtra("note_id", -1)
        if (noteId != -1L) {
            val note = dbHelper.getNote(noteId)
            note?.let {
                editTitle.setText(it.title)
                it.drawingData?.let { data ->
                    canvasView.deserializeDrawing(data)
                }
            }
        }

        btnPenBlack.setOnClickListener { canvasView.setPenColor(Color.BLACK) }
        btnPenBlue.setOnClickListener { canvasView.setPenColor(Color.parseColor("#1E88E5")) }
        btnPenRed.setOnClickListener { canvasView.setPenColor(Color.parseColor("#E53935")) }
        btnPenGreen.setOnClickListener { canvasView.setPenColor(Color.parseColor("#43A047")) }
        btnEraser.setOnClickListener { canvasView.setEraserMode(true) }
        btnUndo.setOnClickListener { canvasView.undo() }
        btnClear.setOnClickListener { canvasView.clearCanvas() }

        btnBack.setOnClickListener {
            saveDrawing()
            finish()
        }

        btnSave.setOnClickListener {
            saveDrawing()
            Toast.makeText(this, "Canvas Saved", Toast.LENGTH_SHORT).show()
            finish()
        }
    }

    override fun onBackPressed() {
        saveDrawing()
        super.onBackPressed()
    }

    private fun saveDrawing() {
        val title = editTitle.text.toString().trim()
        val finalTitle = if (title.isBlank()) "Handwritten Note" else title
        val drawingJson = canvasView.serializeDrawing()

        if (noteId == -1L) {
            val newNote = Note(
                title = finalTitle,
                content = "Drawing Canvas Note",
                type = Note.TYPE_DRAWING,
                drawingData = drawingJson
            )
            noteId = dbHelper.insertNote(newNote)
        } else {
            val existing = dbHelper.getNote(noteId)
            val updated = Note(
                id = noteId,
                title = finalTitle,
                content = "Drawing Canvas Note",
                type = Note.TYPE_DRAWING,
                drawingData = drawingJson,
                createdAt = existing?.createdAt ?: System.currentTimeMillis()
            )
            dbHelper.updateNote(updated)
        }
    }
}
