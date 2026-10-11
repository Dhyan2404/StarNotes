package com.dhyan.starnotes

import android.os.Bundle
import android.widget.EditText
import android.widget.ImageButton
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.dhyan.starnotes.data.Note
import com.dhyan.starnotes.data.NoteDatabaseHelper

class NoteEditorActivity : AppCompatActivity() {

    private lateinit var dbHelper: NoteDatabaseHelper
    private lateinit var editTitle: EditText
    private lateinit var editContent: EditText
    private var noteId: Long = -1

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_note_editor)

        dbHelper = NoteDatabaseHelper(this)
        editTitle = findViewById(R.id.editNoteTitle)
        editContent = findViewById(R.id.editNoteContent)

        val btnBack = findViewById<ImageButton>(R.id.btnEditorBack)
        val btnSave = findViewById<ImageButton>(R.id.btnEditorSave)

        noteId = intent.getLongExtra("note_id", -1)
        if (noteId != -1L) {
            val note = dbHelper.getNote(noteId)
            note?.let {
                editTitle.setText(it.title)
                editContent.setText(it.content)
            }
        }

        btnBack.setOnClickListener {
            saveNoteIfNotEmpty()
            finish()
        }

        btnSave.setOnClickListener {
            saveNoteIfNotEmpty()
            Toast.makeText(this, "Saved", Toast.LENGTH_SHORT).show()
            finish()
        }
    }

    override fun onBackPressed() {
        saveNoteIfNotEmpty()
        super.onBackPressed()
    }

    private fun saveNoteIfNotEmpty() {
        val title = editTitle.text.toString().trim()
        val content = editContent.text.toString().trim()

        if (title.isBlank() && content.isBlank()) {
            return
        }

        val finalTitle = if (title.isBlank()) {
            if (content.length > 20) content.substring(0, 20) + "..." else content
        } else title

        if (noteId == -1L) {
            val newNote = Note(
                title = finalTitle,
                content = content,
                type = Note.TYPE_TEXT
            )
            noteId = dbHelper.insertNote(newNote)
        } else {
            val existing = dbHelper.getNote(noteId)
            val updated = Note(
                id = noteId,
                title = finalTitle,
                content = content,
                type = Note.TYPE_TEXT,
                createdAt = existing?.createdAt ?: System.currentTimeMillis()
            )
            dbHelper.updateNote(updated)
        }
    }
}
